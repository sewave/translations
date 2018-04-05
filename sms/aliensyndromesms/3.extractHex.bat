@echo off
set T_FILENAME="TR_Alien Syndrome (UE) [!].sms"
set SCRIPTNAME="aliensyndromesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16860-16940
pause
