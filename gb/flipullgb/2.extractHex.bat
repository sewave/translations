@echo off
set T_FILENAME="TR_Flipull (U) [!].gb"
set SCRIPTNAME="flipullgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3D9E:30,4D9E:30,4FEE:100,51CE:100,513E:80
pause
