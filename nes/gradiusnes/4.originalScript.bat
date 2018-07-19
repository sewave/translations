@echo off
set T_FILENAME="Gradius (U) [!].nes"
set SCRIPTNAME="gradiusnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
