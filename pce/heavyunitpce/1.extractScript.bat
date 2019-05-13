@echo off
set T_FILENAME="Heavy Unit (Japan).pce"
set SCRIPTNAME="heavyunitpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
