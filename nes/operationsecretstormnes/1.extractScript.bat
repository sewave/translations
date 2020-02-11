@echo off
set T_FILENAME="Operation Secret Storm (Color Dreams) [!].nes"
set SCRIPTNAME="operationsecretstormnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
