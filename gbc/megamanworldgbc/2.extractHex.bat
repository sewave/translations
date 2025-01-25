@echo off
set T_FILENAME="TR_Mega Man World.gb"
set SCRIPTNAME="megamanworldgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10F39:20,3ADF1:50,3AFF1:20,18AB6:50,18CB6:20,32FC1:50,331C1:20,18926:70
pause
