@echo off
set T_FILENAME="Lode Runner (U) [!].nes"
set SCRIPTNAME="loderunnernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
