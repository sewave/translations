@echo off
set T_FILENAME="TR_Super Off Road (U) [!].gb"
set SCRIPTNAME="superoffroadgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1B290:140,1F190:800,CC60:10
pause
