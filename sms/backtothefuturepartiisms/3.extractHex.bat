@echo off
set T_FILENAME="TR_Back to the Future Part II (UE) [!].sms"
set SCRIPTNAME="backtothefuturepartiisms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 244A3:60,24B63:A0,C46:C0,14143:C0,1C143:C0,D26-1B26
pause
