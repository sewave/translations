@echo off
set T_FILENAME="Bomberman (U) [!].nes"
set SCRIPTNAME="bombermannes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
