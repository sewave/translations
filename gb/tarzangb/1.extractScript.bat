@echo off
set T_FILENAME="Tarzan (U) [!].gb"
set SCRIPTNAME="tarzangb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
