@echo off
set T_FILENAME="TR_Time Killers (USA).md"
set SCRIPTNAME="timekillerssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
