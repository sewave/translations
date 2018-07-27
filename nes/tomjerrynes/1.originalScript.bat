@echo off
set T_FILENAME="Tom & Jerry (U) [!].nes"
set SCRIPTNAME="tomjerrynes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
