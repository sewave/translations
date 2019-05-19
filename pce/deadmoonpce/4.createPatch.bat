@echo off
set T_FILENAME="TR_Dead Moon (U).pce"
set S_FILENAME="Dead Moon (U).pce"
set SCRIPTNAME="deadmoonpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
