@echo off
set T_FILENAME="TR_BattleCity (J) [!].gb"
set SCRIPTNAME="battlecitygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
