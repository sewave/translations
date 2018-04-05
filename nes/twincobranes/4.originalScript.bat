@echo off
set T_FILENAME="Twin Cobra (U) [!].nes"
set SCRIPTNAME="twincobranes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
