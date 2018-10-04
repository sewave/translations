@echo off
set T_FILENAME="Jackie Chan's Action Kung Fu (U).pce"
set SCRIPTNAME="jackiechansactionkungfupce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
