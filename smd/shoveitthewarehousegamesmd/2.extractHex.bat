@echo off
set T_FILENAME="TR_Shove It! ...The Warehouse Game (USA).md"
set SCRIPTNAME="shoveitthewarehousegamesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
