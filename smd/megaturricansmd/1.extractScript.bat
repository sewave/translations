@echo off
set T_FILENAME="Mega Turrican (U) [!].bin"
set SCRIPTNAME="megaturricansmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
