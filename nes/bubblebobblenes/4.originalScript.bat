@echo off
set T_FILENAME="Bubble Bobble (U) [!].nes"
set SCRIPTNAME="bubblebobblenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
