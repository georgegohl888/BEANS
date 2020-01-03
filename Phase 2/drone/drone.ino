#include <EasyTransfer.h>
EasyTransfer ETin, ETout;
#include <movingAvg.h>
movingAvg avgvolts(20); 
int value1 = 69;
int voltnew;
int voltavg;

struct RECEIVE_DATA_STRUCTURE{//recieved data
  int16_t switch1; //switch 1
};

struct SEND_DATA_STRUCTURE{//sent data
  int16_t volts;  //battery voltage (raw)
  int16_t rollcmd;  //roll value read from the reciever
};

RECEIVE_DATA_STRUCTURE rxdata; //finalising the data structure
SEND_DATA_STRUCTURE txdata;

void setup() {
  // put your setup code here, to run once:
  pinMode(PC13, OUTPUT);
  Serial2.begin(57600);
  ETin.begin(details(rxdata), &Serial2); //begins recieve protocol
  ETout.begin(details(txdata), &Serial2); //begins transmit protocol
  rxdata.switch1 = 0; //beginning the switch value as off
  txdata.volts=0;  
  txdata.rollcmd=1500;
  avgvolts.begin();     
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial2.available())//recieving any new data
  {
    ETin.receiveData(); 
  }
  voltnew=analogRead(PA4);
  voltavg = avgvolts.reading(voltnew);
  txdata.volts = voltavg;
  Serial2.write(value1);
  delay(500);
  ETout.sendData();
}
