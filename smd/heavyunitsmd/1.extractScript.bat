@echo off
set T_FILENAME="Heavy Unit (J) [!].bin"
set SCRIPTNAME="heavyunitsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
