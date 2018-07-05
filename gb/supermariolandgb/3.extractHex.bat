@echo off
set T_FILENAME="TR_Super Mario Land (W) (V1.1) [!].gb"
set SCRIPTNAME="supermariolandgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
