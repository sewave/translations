@echo off
set T_FILENAME="Prince of Persia (USA).sfc"
set SCRIPTNAME="princeofpersiasfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
