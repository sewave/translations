@echo off
set T_FILENAME="Dig Dug II - Trouble in Paradise (U) [!].nes"
set SCRIPTNAME="digdugiitroubleinparadisenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
