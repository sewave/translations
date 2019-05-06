@echo off
set T_FILENAME="TR_BattleCity (J) [!].gb"
set S_FILENAME="BattleCity (J) [!].gb"
set SCRIPTNAME="battlecitygb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
