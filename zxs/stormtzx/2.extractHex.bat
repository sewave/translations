@echo off
set T_FILENAME="TR_Storm.tzx"
set SCRIPTNAME="stormtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5ED1:20,5FA1:08,6079:30,6179:30
pause
