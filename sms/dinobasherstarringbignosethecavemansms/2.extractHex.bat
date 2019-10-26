@echo off
set T_FILENAME="TR_Dinobasher Starring Bignose the Caveman (E) (Prototype) [!].sms"
set SCRIPTNAME="dinobasherstarringbignosethecavemansms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
