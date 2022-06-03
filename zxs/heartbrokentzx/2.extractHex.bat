@echo off
set T_FILENAME="TR_Heartbroken.tzx"
set SCRIPTNAME="heartbrokentzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A4E8:30
pause
