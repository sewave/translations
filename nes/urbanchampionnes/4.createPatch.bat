@echo off
set T_FILENAME="TR_Urban Champion (W) [!].nes"
set S_FILENAME="Urban Champion (W) [!].nes"
set SCRIPTNAME="urbanchampionnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
