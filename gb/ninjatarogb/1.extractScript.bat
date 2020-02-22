@echo off
set T_FILENAME="Ninja Taro (U) [!].gb"
set SCRIPTNAME="ninjatarogb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
