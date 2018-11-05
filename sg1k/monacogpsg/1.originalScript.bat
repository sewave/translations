@echo off
set T_FILENAME="Monaco GP (SG-1000).sg"
set SCRIPTNAME="monacogpsg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
