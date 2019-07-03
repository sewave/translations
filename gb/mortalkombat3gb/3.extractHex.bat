@echo off
set T_FILENAME="TR_Mortal Kombat 3 (U) [!].gb"
set SCRIPTNAME="mortalkombat3gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
