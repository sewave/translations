@echo off
set T_FILENAME="TR_Superkid.tzx"
set SCRIPTNAME="superkidtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 561D:10
pause
