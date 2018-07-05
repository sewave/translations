@echo off
set T_FILENAME="TR_Super Mario Land (W) (V1.1) [!].gb"
set S_FILENAME="Super Mario Land (W) (V1.1) [!].gb"
set SCRIPTNAME="supermariolandgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
