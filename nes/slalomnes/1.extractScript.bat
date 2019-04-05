@echo off
set T_FILENAME="Slalom (U) [!].nes"
set SCRIPTNAME="slalomnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
