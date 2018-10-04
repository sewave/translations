@echo off
set T_FILENAME="TR_Mortal Kombat (U) [!].gb"
set SCRIPTNAME="mortalkombatgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
