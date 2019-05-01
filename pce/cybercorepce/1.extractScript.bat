@echo off
set T_FILENAME="Cyber Core (U).pce"
set SCRIPTNAME="cybercorepce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
