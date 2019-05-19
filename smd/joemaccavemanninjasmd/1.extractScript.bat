@echo off
set T_FILENAME="Joe & Mac Caveman Ninja (U) [!].bin"
set SCRIPTNAME="joemaccavemanninjasmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
