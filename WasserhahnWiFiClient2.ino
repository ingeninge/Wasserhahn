#include <PubSubClient.h>
#include <ESP8266WiFi.h>

/* Used ESP8266 WROOM-02 module from Pollin.de
Pin Name  Function  used_as
10  IO4   GPIO4     Input_Close Wasserhahn geschlossen, wenn auf GND
14  IO5   GPIO5     Input_Open  Wasserhahn geöffnet, wenn auf GND
04  IO12  GPIO12    Output_Open Schaltet das Relay zum Öffnen ein
05  IO13  GPIO13    Output_Close Schaltet das Relay zum Schließen ein

Usage:  mosquitto_pub -h 192.168.2.78 -t wasserhahn/set -m Status // returns a JSON-String: {"Close":0,"Open":1}
        mosquitto_pub -h 192.168.2.78 -t wasserhahn/set -m Close
        mosquitto_pub -h 192.168.2.78 -t wasserhahn/set -m Open

*/

#define INPUT_CLOSE 4
#define INPUT_OPEN 5
#define OUTPUT_OPEN 12
#define OUTPUT_CLOSE 13

#ifndef STASSID
#define STASSID "YourSSID"
#define STAPSK  "YourSecretKey"
#endif
const char* ssid     = STASSID;
const char* password = STAPSK;

char* topic = "wasserhahn/set";
char* server = "192.168.2.78";
char message_buff[100];

const char* host = "192.168.2.78";
const uint16_t port = 1883;
String payload = "";
// Der Motorkugelhahn hat 2 galvanisch getrennte kontakte. Einer schließt bei vollständig geschlossenem Kugelhahn,
// der zweite schließt bei vollständig geöffneten Kugelhahn. Dazwischen sind beide Kontakte offen
int status=0; //Status des Kugelhahns: 0=offen, 1=zu, 2=weder noch (beide Kontakte offen)
long lastReconnectAttempt = 0;

void Open() {
  if(!(digitalRead(INPUT_OPEN))) {
    Serial.println("Wasserhahn ist bereits auf");
    delay(100);
    Status();
    delay(100);
    exit;
  }
  else
  {
    Serial.println("Öffne Wasserhahn");
    while (digitalRead(INPUT_OPEN)) { 
      delay(100);
      digitalWrite(OUTPUT_OPEN, 1);
      //max 90sek
      delay(100);
    }
   }
    Serial.println("Wasserhahn voll geöffnet");
    delay(2000);
    digitalWrite(OUTPUT_OPEN, 0);
    delay(100);
    Status();
    delay(100);
}

void Close() {
  if(!(digitalRead(INPUT_CLOSE))) {
    Serial.println("Wasserhahn ist bereits zu");
    delay(100);
    Status();
    delay(100);
    exit;
  }
  else
  {
    Serial.println("Schließe Wasserhahn");
    while (digitalRead(INPUT_CLOSE)) { 
      delay(100);
      digitalWrite(OUTPUT_CLOSE, 1);
      //max 90sek
      delay(100);
    }
   }
    Serial.println("Wasserhahn voll geschlossen");
    delay(2000);
    digitalWrite(OUTPUT_CLOSE, 0);
    delay(100);
    Status();
    delay(100);
}

void callback(char* topic, byte* payload, unsigned int length) {
  // handle message arrived
  int i = 0;
  Serial.println("Message arrived:  topic: " + String(topic));
  Serial.println("Length: " + String(length,DEC));
  // create character buffer with ending null terminator (string)
  for(i=0; i<length; i++) {
    message_buff[i] = payload[i];
  }
  message_buff[i] = '\0';
  
  String msgString = String(message_buff);
  Serial.println("Payload: " + msgString);
  if (msgString.equals("Open")) {
    Open();
  } else if (msgString.equals("Close")) {
    Close();
  } else if (msgString.equals("Status")) {
    Status();
  }
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

WiFiClient wifiClient;
PubSubClient client(host, 1883, callback, wifiClient);

void setup() {
  //pinMode(pin,mode);
  pinMode(OUTPUT_CLOSE,OUTPUT);
  pinMode(OUTPUT_OPEN,OUTPUT);
  pinMode(INPUT_CLOSE,INPUT);
  pinMode(INPUT_OPEN,INPUT);
  digitalWrite(12,0);
  digitalWrite(13,0); //beide Relais aus
  
  Serial.begin(115200);

  // We start by connecting to a WiFi network

  //Serial.println();
  //Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  /* Explicitly set the ESP8266 to be a WiFi-client, otherwise, it by default,
     would try to act as both a client and an access-point and could cause
     network-issues with your other WiFi-devices on your WiFi-network. */
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  Serial.println("Connecting to MQTT Broker");
  /*String clientName="Wasserhahn";
  uint8_t mac[6];
  WiFi.macAddress(mac);
  clientName += macToStr(mac);
  clientName += "-";
  clientName += String(micros() & 0xff, 16);

  Serial.print("Connecting to ");
  Serial.print(server);
  Serial.print(" as ");
  Serial.println(clientName);
    if (client.connect((char*) clientName.c_str())) {*/
    if (reconnect()) {
      Serial.println("Connected to MQTT broker");
      Serial.print("Topic is: ");
      Serial.println(topic);
    
      if (client.publish(topic, "hello from ESP8266")) {
        Serial.println("Publish ok");
      }
      else {
        Serial.println("Publish failed");
      }
    }
    else {
      Serial.println("MQTT connect failed");
      Serial.println("Will reset and try again...");
      abort();
    }
  if (client.connected()){
    Serial.print("Sending payload: ");
    Serial.println(payload);
    if (client.subscribe("wasserhahn/set")) {
      Serial.println("Subscripe OK");
    }
    else {
      Serial.println("Subscription failed");
    }
  }
}

void Status() {
  //create a JSON string
  payload = "{\"Close\":";
  payload += digitalRead(INPUT_CLOSE);
  payload += ",\"Open\":";
  payload += digitalRead(INPUT_OPEN);
  payload += "}";
  Serial.println("Status: " + payload);
  if (client.publish(topic, (char*) payload.c_str())) {
      Serial.println("Publish ok");
    }
    else {
      Serial.println("Publish failed Status()" +payload);
    }
    Serial.println("Ende Status()");
}

boolean reconnect() {
  String clientName="Wasserhahn";
  uint8_t mac[6];
  WiFi.macAddress(mac);
  clientName += macToStr(mac);
  clientName += "-";
  clientName += String(micros() & 0xff, 16);
  if (client.connect((char*) clientName.c_str())) {
    // Once connected, publish an announcement...
    client.publish("wasserhahn/set","reconnect");
    // ... and resubscribe
    client.subscribe("wasserhahn/set");
  }
  return client.connected();
}

void loop() {
  if (!client.connected()) {
    long now = millis();
    if (now - lastReconnectAttempt > 5000) {
      lastReconnectAttempt = now;
      // Attempt to reconnect
      if (reconnect()) {
        lastReconnectAttempt = 0;
        Serial.println("reconnected");
      }
    }
  } else {
    // Client connected

   //static int counter = 0;
  client.loop();
  //++counter;
  delay(50);
  }
  }
