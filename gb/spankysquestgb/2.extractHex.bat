@echo off
set T_FILENAME="TR_Spanky's Quest (U) [!].gb"
set SCRIPTNAME="spankysquestgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
