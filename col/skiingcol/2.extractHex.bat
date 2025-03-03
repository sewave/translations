@echo off
set T_FILENAME="TR_Skiing (USA).col"
set SCRIPTNAME="skiingcol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1D40:28
pause
