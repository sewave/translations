@echo off
set T_FILENAME="Dragon Spirit (U).pce"
set SCRIPTNAME="dragonspiritpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
