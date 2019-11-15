@echo off
set T_FILENAME="Factory Panic (U) [!].gg"
set SCRIPTNAME="factorypanicgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
