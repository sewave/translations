@echo off
set T_FILENAME="TR_Dexterity (U) [!].gb"
set SCRIPTNAME="dexteritygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
