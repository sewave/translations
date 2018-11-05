@echo off
set T_FILENAME="TR_Captain Silver (U) [!].sms"
set SCRIPTNAME="captainsilversms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B4D9:40,B6B1:140,EACA:98D
pause
