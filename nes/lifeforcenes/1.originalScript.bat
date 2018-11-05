@echo off
set T_FILENAME="Life Force (U) [!].nes"
set SCRIPTNAME="lifeforcenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
