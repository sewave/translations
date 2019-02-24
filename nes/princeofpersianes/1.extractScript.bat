@echo off
set T_FILENAME="Prince of Persia (U) [!].nes"
set SCRIPTNAME="princeofpersianes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
