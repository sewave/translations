@echo off
set T_FILENAME="Contra (U) [!].nes"
set SCRIPTNAME="contranes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
