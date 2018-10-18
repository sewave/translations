@echo off
set T_FILENAME="TR_Wolf Child (U) [!].smc"
set SCRIPTNAME="wolfchildsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 215C0:40
pause
