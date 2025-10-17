@echo off
set T_FILENAME="TR_Wriggler.tzx"
set SCRIPTNAME="wrigglertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 775D:30,7A8D:30
pause
