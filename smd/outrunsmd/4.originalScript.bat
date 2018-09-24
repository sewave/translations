@echo off
set T_FILENAME="OutRun (W) [!].gen"
set SCRIPTNAME="outrunsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
