@echo off
set T_FILENAME="Girl's Garden (SG-1000).sg"
set SCRIPTNAME="girlsgardensg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
