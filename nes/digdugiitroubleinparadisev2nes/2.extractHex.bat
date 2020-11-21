@echo off
set T_FILENAME="TR_Dig Dug II - Trouble in Paradise (USA).nes"
set SCRIPTNAME="digdugiitroubleinparadisenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9200:10
pause
