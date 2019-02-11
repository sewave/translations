@echo off
set T_FILENAME="TR_Robo Warrior (U) [!].nes"
set S_FILENAME="Robo Warrior (U) [!].nes"
set SCRIPTNAME="robowarriornes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
