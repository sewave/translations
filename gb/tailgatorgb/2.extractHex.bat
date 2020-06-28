@echo off
set T_FILENAME="TR_Tail 'Gator (USA, Europe).gb"
set SCRIPTNAME="tailgatorgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
