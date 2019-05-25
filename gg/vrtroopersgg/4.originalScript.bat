@echo off
set T_FILENAME="VR Troopers (U) [!].gg"
set SCRIPTNAME="vrtroopersgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
