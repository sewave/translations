@echo off
set T_FILENAME="TR_Slap Shot (UB) (V1.2) [!].sms"
set SCRIPTNAME="slapshotsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
