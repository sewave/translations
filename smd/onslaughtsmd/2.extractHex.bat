@echo off
set T_FILENAME="TR_Onslaught (U) [c][!].bin"
set SCRIPTNAME="onslaughtsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
