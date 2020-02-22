@echo off
set T_FILENAME="TR_Ninja Taro (U) [!].gb"
set SCRIPTNAME="ninjatarogb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BB98:40
pause
