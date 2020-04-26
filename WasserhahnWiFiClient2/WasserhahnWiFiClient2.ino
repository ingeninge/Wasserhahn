
#include <ESP8266WiFi.h>
#include <PubSubClient.h>

/* Used ESP8266 WROOM-02 module from Pollin.de
Pin Name  Function  used_as
10  IO4   GPIO4     Input_Close Wasserhahn geschlossen, wenn auf GND
14  IO5   GPIO5     Input_Open  Wasserhahn geöffnet, wenn auf GND
04  IO12  GPIO12    Output_Open Schaltet das Relay zum Öffnen ein
05  IO13  GPIO13    Output_Close Schaltet das Relay zum Schließen ein

If you are testing on a NodeMCU Dev-Board: 
D1 = GPIO5
D2 = GPIO4
D6 = GPIO12
D7 = GPIO13

Usage:  mosquitto_pub -h your.mqtt.broker.ip -t wasserhahn/set -m Status // returns a JSON-String: {"Close":0,"Open":1}
        mosquitto_pub -h your.mqtt.broker.ip -t wasserhahn/set -m Close
        mosquitto_pub -h your.mqtt.broker.ip -t wasserhahn/set -m Open
*/

#define INPUT_CLOSE 4
#define INPUT_OPEN 5
#define OUTPUT_OPEN 12
#define OUTPUT_CLOSE 13

#define DEBUGSERIAL

// Put your credentials for your WiFi either in a file called credentials.h in your project folder or below
#ifdef DEBUGSERIAL
  #include "credentials.h"
#endif

// WiFi Settings
#ifndef STASSID
//#define STASSID "YourSSID"
//#define STAPSK  "YourSecretKey"
#endif
const char* ssid     = STASSID;
const char* password = STAPSK;


// MQTT Broker Settings
//char* server = "your.mqtt.broker.ip";
const char* server = "192.168.2.78";
const uint16_t port = 1883;
// change this to the mqtt topic you want to use:
char* topic = "wasserhahn2/set";
String clientName="wasserhahn2";
char message_buff[100];
String payload = "";

// Der Motorkugelhahn hat 2 galvanisch getrennte kontakte. Einer schließt bei vollständig geschlossenem Kugelhahn,
// der zweite schließt bei vollständig geöffneten Kugelhahn. Dazwischen sind beide Kontakte offen.
// The ball valve has 2 isolated contacts. Only one contact at a time is closed. In transient phase both are open.

int status=0; //Status des Kugelhahns: 0=offen/open, 1=zu/closed, 2=weder noch (beide Kontakte offen)/both contacts open

long lastReconnectAttempt = 0;

void Open() {
  if(!(digitalRead(INPUT_OPEN))) {
    #ifdef DEBUGSERIAL
    Serial.println("Wasserhahn ist bereits auf");
    //Serial.println("Valve is already open");
    #endif
    delay(100);
    Status();
    delay(100);
    exit;
  }
  else
  { 
    #ifdef DEBUGSERIAL
    Serial.println("Öffne Wasserhahn");
    //Serial.println("Opening valve");
    #endif
    while (digitalRead(INPUT_OPEN)) { 
      delay(100);
      digitalWrite(OUTPUT_OPEN, 1);
      //needs max 90s
      delay(100);
    }
   }
    #ifdef DEBUGSERIAL
    Serial.println("Wasserhahn voll geöffnet");
    //Serial.println("Opening completed");
    #endif
    delay(2000);
    digitalWrite(OUTPUT_OPEN, 0);
    delay(100);
    Status();
    delay(100);
}

void Close() {
  if(!(digitalRead(INPUT_CLOSE))) {
    #ifdef DEBUGSERIAL
    Serial.println("Wasserhahn ist bereits zu");
    //Serial.println("Valve is already closed");
    #endif
    delay(100);
    Status();
    delay(100);
    exit;
  }
  else
  {
    #ifdef DEBUGSERIAL
    Serial.println("Schließe Wasserhahn");
    //Serial.println("Closeing valve");
    #endif
    while (digitalRead(INPUT_CLOSE)) { 
      delay(100);
      digitalWrite(OUTPUT_CLOSE, 1);
      //max 90sek
      delay(100);
    }
   }
    #ifdef DEBUGSERIAL
    Serial.println("Wasserhahn voll geschlossen");
    //Serial.println("Closeing completed");
    #endif
    delay(2000);
    digitalWrite(OUTPUT_CLOSE, 0);
    delay(100);
    Status();
    delay(100);
}

void callback(char* topic, byte* payload, unsigned int length) {
  // Rückrufroutine für MQTT Nachrichten / handle message arrived
  int i = 0;
  #ifdef DEBUGSERIAL
  Serial.println("Message arrived:  topic: " + String(topic));
  Serial.println("Length: " + String(length,DEC));
  #endif
  // create character buffer with ending null terminator (string)
  for(i=0; i<length; i++) {
    message_buff[i] = payload[i];
  }
  message_buff[i] = '\0';
  
  String msgString = String(message_buff);
  #ifdef DEBUGSERIAL
  Serial.println("Payload: " + msgString);
  #endif
  if (msgString.equals("Open")) {
    Open();
  } else if (msgString.equals("Close")) {
    Close();
  } else if (msgString.equals("Status")) {
    Status();
  }
}

WiFiClient wifiClient;
PubSubClient client(server, 1883, callback, wifiClient);

void Status() {
  //create a JSON string
  payload = "{\"Close\":";
  payload += digitalRead(INPUT_CLOSE);
  payload += ",\"Open\":";
  payload += digitalRead(INPUT_OPEN);
  payload += "}";
  #ifdef DEBUGSERIAL
  Serial.println("Status: " + payload);
  #endif
  if (client.publish(topic, (char*) payload.c_str())) {
      #ifdef DEBUGSERIAL
      Serial.println("Publish ok");
      #endif
    }
    else {
      #ifdef DEBUGSERIAL
      Serial.println("Publish failed Status()" +payload);
      #endif
    }
    #ifdef DEBUGSERIAL
    Serial.println("Ende Status()");
    #endif
}

String macToStr(const uint8_t* mac)
{
  String result;
  for (int i = 0; i < 6; ++i) {
    result += String(mac[i], 16);
    if (i < 5)
      result += ':';
  }
  return result;
}

boolean reconnect() {
  String clientName = String(topic);
  uint8_t mac[6];
  WiFi.macAddress(mac);
  //clientName += topic;
  clientName += macToStr(mac);
  clientName += "-";
  clientName += String(micros() & 0xff, 16);
  if (client.connect((char*) clientName.c_str())) {
    // Once connected, publish an announcement...
    client.publish(topic,"reconnect");
    // ... and resubscribe
    client.subscribe(topic);
  }
  return client.connected();
}

void setup() {
  pinMode(OUTPUT_CLOSE,OUTPUT);
  pinMode(OUTPUT_OPEN,OUTPUT);
  pinMode(INPUT_CLOSE,INPUT);
  pinMode(INPUT_OPEN,INPUT);
  digitalWrite(12,0);
  digitalWrite(13,0); //both relais to off / beide Relais aus
  
  Serial.begin(115200);

  // We start by connecting to a WiFi network
  #ifdef DEBUGSERIAL
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  #endif
  /* Explicitly set the ESP8266 to be a WiFi-client, otherwise, it by default,
     would try to act as both a client and an access-point and could cause
     network-issues with your other WiFi-devices on your WiFi-network. */
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    #ifdef DEBUGSERIAL
    Serial.print(".");
    #endif
  }

  #ifdef DEBUGSERIAL
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  Serial.println("Connecting to MQTT Broker");
  #endif
  //String clientName="Wasserhahn2";
  uint8_t mac[6];
  WiFi.macAddress(mac);
  clientName += macToStr(mac);
  clientName += "-";
  clientName += String(micros() & 0xff, 16);
  #ifdef DEBUGSERIAL
  Serial.print("Connecting to ");
  Serial.print(server);
  Serial.print(" as ");
  Serial.println(clientName);
  #endif
  //if (client.connect((char*) clientName.c_str())) {

  if (reconnect()) {
      #ifdef DEBUGSERIAL
      Serial.println("Connected to MQTT broker");
      Serial.print("Topic is: ");
      Serial.println(topic);
      #endif
      if (client.publish(topic, "hello from ESP8266")) {
        #ifdef DEBUGSERIAL
        Serial.println("Publish ok");
        #endif
      }
      else {
        #ifdef DEBUGSERIAL
        Serial.println("Publish failed");
        #endif
      }
  }
  else {
      #ifdef DEBUGSERIAL
      Serial.println("MQTT connect failed");
      Serial.println("Will reset and try again...");
      #endif
      abort();
  }
  if (client.connected()){
    #ifdef DEBUGSERIAL
    Serial.print("Sending payload: ");
    Serial.println(payload);
    #endif
    if (client.subscribe(topic)) {
      #ifdef DEBUGSERIAL
      Serial.println("Subscripe OK");
      #endif
    }
    else {
      #ifdef DEBUGSERIAL
      Serial.println("Subscription failed");
      #endif
    }
  }
} //end void setup()

void loop() {
  if (!client.connected()) {
    long now = millis();
    if (now - lastReconnectAttempt > 5000) {
      lastReconnectAttempt = now;
      // Attempt to reconnect
      if (reconnect()) {
        lastReconnectAttempt = 0;
        #ifdef DEBUGSERIAL
        Serial.println("reconnected");
        #endif
      }
    }
  } 
  else 
  {
   // Client connected
   client.loop();
   delay(50);
  }
}
