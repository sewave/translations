@echo off
set T_FILENAME="TR_Fushigi no Oshiro Pit Pot (J) [!].sms"
set SCRIPTNAME="fushiginooshiropitpotsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
