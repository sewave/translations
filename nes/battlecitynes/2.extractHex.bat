@echo off
set T_FILENAME="TR_BattleCity (Japan).nes"
set SCRIPTNAME="battlecitynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5010:800
pause
