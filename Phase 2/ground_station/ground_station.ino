//required librarys
#include <LiquidCrystal.h> //provides lcd functionality in a much easier package
#include <EasyTransfer.h>  //communication frotocol
#include <SoftwareSerial.h>//serial protocol with radio modules

const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;//lcd pins
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);//initialising lcd pins

EasyTransfer ETin, ETout;//declaring communication protocol

SoftwareSerial Radio(9,10);//declaring serial pins

float vfinal;//actual calibrated battery voltage
float vnew = 0; //new voltage
float vold = 0; //old voltage
bool switch1;   //switch state

struct RECEIVE_DATA_STRUCTURE{ //what will be recieved
  int16_t volts; //battery voltage
  int16_t rollcmd; //roll value
};

struct SEND_DATA_STRUCTURE{ //what will be sent
  int16_t switch1; //switch value
};

RECEIVE_DATA_STRUCTURE rxdata; //decalring rx/tx data 
SEND_DATA_STRUCTURE txdata;

void setup() { //setup
  pinMode(8, INPUT_PULLUP); //switch (default on to prevent floating
  lcd.begin(16, 4); //initialise 16x2 lcd screen
  Radio.begin(57600); //initialise communication with the radio.
  ETin.begin(details(rxdata), &Radio);  //initialise recieve protocol
  ETout.begin(details(txdata), &Radio); //initialise transmit protocol
  rxdata.volts = 0;  //starting volta at 0
  lcd.print("Telemetry v3.1"); //writing to the screen
  Serial.begin(9600);
}

void loop() {
  {
    switch1 = digitalRead(8); //read switch state
    ETin.receiveData(); //recieve any data
    lcd.setCursor(0, 1); //set lcd cursor
    lcd.print("volts:"); //print volts for easy reading
    vnew = (rxdata.volts); //save read in volta value
    vfinal = ((vnew+vold)/2*0.00822);//calibrate volts value
    Serial.println(vfinal);
    lcd.print(vfinal,2); //print calibrated volts value
    lcd.println("       ");//prevents weird characters being displayed
    vold = vnew;  //save old value
    lcd.setCursor(0, 2); //move curtsor down a line
    lcd.print("rollcmd:");                // used for printing roll value
    lcd.print(rxdata.rollcmd);
    lcd.println("    ");
   if(switch1) //writing switch value to screen
   {
     txdata.switch1=1;
     lcd.setCursor(0, 3);
     lcd.println("Switch: on      ");
   }
   else if(!switch1)
   {
     txdata.switch1=0;
     lcd.setCursor(0, 3);
     lcd.println("Switch: off     ");
   }
  }
 ETout.sendData(); //sanding any new data
 
 delay(10); //breath

}
