@echo off
set T_FILENAME="Heavy Nova (U) [!].bin"
set SCRIPTNAME="heavynovasmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
