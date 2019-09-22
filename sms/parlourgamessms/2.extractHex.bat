@echo off
set T_FILENAME="TR_Parlour Games (USA, Europe).sms"
set SCRIPTNAME="parlourgamessms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
