@echo off
set T_FILENAME="TR_BattleCity (Japan).nes"
set S_FILENAME="BattleCity (Japan).nes"
set SCRIPTNAME="battlecitynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
