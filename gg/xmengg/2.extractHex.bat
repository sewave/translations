@echo off
set T_FILENAME="TR_X-Men (U) [!].gg"
set SCRIPTNAME="xmengg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11C2:20,F883:300
pause
