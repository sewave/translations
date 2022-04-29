@echo off
set T_FILENAME="TR_Spooky Castle.tzx"
set SCRIPTNAME="spookycastletzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2BF5:8,2C25:8
pause
