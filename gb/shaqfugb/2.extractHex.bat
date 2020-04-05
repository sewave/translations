@echo off
set T_FILENAME="TR_Shaq Fu (U) [S][!].gb"
set SCRIPTNAME="shaqfugb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10340:C0,23750:40,2A190:120
pause
