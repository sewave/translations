@echo off
set T_FILENAME="Snoopy - Magic Show (U) [!].gb"
set SCRIPTNAME="snoopymagicshowgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
