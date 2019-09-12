@echo off
set T_FILENAME="Probotector (Europe).nes"
set SCRIPTNAME="probotectornes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
