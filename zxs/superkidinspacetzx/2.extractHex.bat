@echo off
set T_FILENAME="TR_Superkid In Space.tzx"
set SCRIPTNAME="superkidinspacetzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5BD4:80,5774:20
pause
