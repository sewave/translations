@echo off
set T_FILENAME="TR_Penguin Land (UE) [!].sms"
set SCRIPTNAME="penguinlandsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 14A1F:20,14FA0:80,1AC5C:600,6621:20,6781:20,68A1:20,1C93E:140
pause
