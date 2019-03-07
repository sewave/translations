@echo off
set T_FILENAME="Balloon Fight (U) [!].nes"
set SCRIPTNAME="balloonfightnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
