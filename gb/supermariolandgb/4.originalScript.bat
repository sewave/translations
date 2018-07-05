@echo off
set T_FILENAME="Super Mario Land (W) (V1.1) [!].gb"
set SCRIPTNAME="supermariolandgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
