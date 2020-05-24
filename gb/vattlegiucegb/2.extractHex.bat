@echo off
set T_FILENAME="TR_Vattle Giuce (J) [!].gb"
set SCRIPTNAME="vattlegiucegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10AB0:50,14890:20,14A90:50
pause
