@echo off
set T_FILENAME="Pop Up (U) [!].gb"
set SCRIPTNAME="popupgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
