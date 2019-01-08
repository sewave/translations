@echo off
set T_FILENAME="TR_Mega SWIV (E).bin"
set SCRIPTNAME="megaswivsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 70274:400
pause
