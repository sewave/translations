@echo off
set T_FILENAME="OutRunners (U) [!].gen"
set SCRIPTNAME="outrunnerssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
