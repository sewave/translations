@echo off
set T_FILENAME="TR_Cool Ball (E) [!].gb"
set SCRIPTNAME="coolballgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 691:20,2727:20
pause
