@echo off 
set T_FILENAME="TR_R.C. Grand Prix (UE) [!].sms"
set SCRIPTNAME="rcgrandprix"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
