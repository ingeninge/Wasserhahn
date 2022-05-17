# Wasserhahn

ATTENTION! This repository is only for testing! No production, and never will be.

MQTT controlled Motor Bulb Valve ESP8266 Arduino
![Image of the motor driver](https://github.com/ingeninge/Wasserhahn/blob/master/images/20190403_160802.jpg)
Manufactor is END. Here is a link to the Datasheet: https://shop.end.de/armaturen/antriebe-und-zubehoer/elektrische-antriebe/ne034100-elektrischer-schwenkantrieb-30nm-230v-ac

Since my water tap in the garden was leaking and the repair would have included ripping down the building bricks, I asked a friend to build in a ball valve. 
On this I could mount a motor to open and close the garden water tap.
To control the motor I use a ESP8266-12 (WROOM-02) and two relays. The ESP uses 2 Inputs and 2 Outputs.
The schematic can be found in the folder images.
The Inputs are from the auxiliary isolated contacts from the motor. The contacts are closed ONLY at the end position of each turn.br>If both are open the valve is in between open and close.
The Outputs are controlling two relays. One for opening and one for closing the valve. The outputs are held active for 90 seconds.
<br>MQTT- protocol is used to control the garden water tap remotely.
First idea was to let it work with an Arduino Sketch, witch you can find in the sources. But then I figured out how to set up Tasmota to work with this Board and Motor. The workaround is: Tasmota [https://github.com/arendst/Tasmota] (I use Version 7.1) controls 2 relays - one for Opening and one for Closing the tap. The downside is, you will have to use two buttons or configure node-red with a function to control the state and switch between the states.<br>
For Programming see https://www.forward.com.au/pfod/ESP8266/GPIOpins/index.html GPIO0 and RST are on Jumper J5. GPIO2 is permanently pulled up via R8.
Todo: Remove copper under the antenna! Enable access to GPIO15 for programming mode or pull low permanent. update mill and drill files, mill, solder and test the layout. Release to public

The settings for Tasmota can be found in the Wiki https://github.com/ingeninge/Wasserhahn/wiki
