# Wasserhahn
MQTT controlled Motor Bulb Valve ESP8266 Arduino
![Image of the motor driver](https://github.com/ingeninge/Wasserhahn/blob/master/images/20190403_160802.jpg)

Since my water tap in the garden was leaking and the repair would have included ripping down the building bricks, I asked a friend to build in a ball valve. On this I could mount a motor to open and close the garden water tap.

To controll the motor I use a ESP8266-12 and two relais. The ESP uses 2 Inputs and 2 Outputs. The Inputs are from the auxillary isolated contacts from the motor. The contacts are closed ONLY at the end position of each turn. If both are open the valve is inbetween open and close.

The Outputs are controlling two relais. One for openeing and one for closing the valve. The outputs are held active for 90 seconds.

MQTT-protocol ist used to control the garden water tap remotely. 
