@echo off
set T_FILENAME="TR_Ninja Gaiden (U) [!].gg"
set SCRIPTNAME="ninjagaidengg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 13B7D:20,14A00:40,14BC0:40,15140:C0,15640:100
pause
