@echo off
set T_FILENAME="Alpha Mission (U) [!].nes"
set SCRIPTNAME="alphamissionnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
