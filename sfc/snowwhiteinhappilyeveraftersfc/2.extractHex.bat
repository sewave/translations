@echo off
set T_FILENAME="TR_Snow White in Happily Ever After (USA).sfc"
set SCRIPTNAME="snowwhiteinhappilyeveraftersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BBA09:20
pause
