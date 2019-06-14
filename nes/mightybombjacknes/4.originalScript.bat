@echo off
set T_FILENAME="Mighty Bomb Jack (U) [!].nes"
set SCRIPTNAME="mightybombjacknes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
