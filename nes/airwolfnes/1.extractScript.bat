@echo off
set T_FILENAME="Airwolf (U) [!].nes"
set SCRIPTNAME="airwolfnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
