@echo off
set T_FILENAME="TR_Bomber Man (1983) (Hudson) (J).rom"
set SCRIPTNAME="bombermanrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 134F:100,123F:10
pause
