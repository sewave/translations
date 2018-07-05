@echo off
set T_FILENAME="TR_OutRun (JU).gg"
set SCRIPTNAME="outrungg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1C300-1C3C0
pause
