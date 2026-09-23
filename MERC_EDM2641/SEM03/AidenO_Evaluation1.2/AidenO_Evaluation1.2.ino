const int pinLEDr = 27;
const int pinLEDg = 14;
const int pinLEDb = 12;

const int pinJoystickX = 15;
const int pinJoystickY = 4;
const int pinJoystickBtn = 5;

int valeurJoystickX;
int valeurJoystickY;

int valeurLEDb;
int valeurBright;

bool btnState = 1;
bool oldBtnState = 1;
bool ledState = 1;

void setup() {
  Serial.begin(9600);
  
  pinMode(pinLEDr, OUTPUT);
  pinMode(pinLEDb, OUTPUT);

  pinMode(pinJoystickBtn, INPUT);
  digitalWrite(pinLEDb, ledState);
  digitalWrite(pinLEDr, ledState);
}

void loop() {
    // joystick rouge à bleu
  valeurJoystickX = analogRead(pinJoystickX);
  // Serial.println("value X: " + valeurJoystickX); 
  valeurLEDb = map(valeurJoystickX, 0, 4095, 0, 255);
  analogWrite(pinLEDb, valeurLEDb * ledState);
  analogWrite(pinLEDr, (255-valeurLEDb) * ledState);
  delay(20);

    // joystick intensité lumineuse
  valeurJoystickY = analogRead(pinJoystickY);
  valeurBright = map(valeurJoystickY, 0, 4095, 0, 100);

  int brightness = map(valeurLEDb * valeurBright, 0, 25500, 0, 255);

  analogWrite(pinLEDb, brightness);
  analogWrite(pinLEDr, brightness);

  Serial.println(brightness);  

    // joystick bouton on et off
  btnState = digitalRead(pinJoystickBtn);
  if (btnState == HIGH && oldBtnState == LOW) {
      ledState = !ledState;
      delay(100);
      // merci à Alexandre pour le coup de main
  }
  oldBtnState = btnState;
}
