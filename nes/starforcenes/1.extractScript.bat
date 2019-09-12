@echo off
set T_FILENAME="Star Force (U) [!].nes"
set SCRIPTNAME="starforcenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
