@echo off
set T_FILENAME="TR_Sky Destroyer (J) [!].nes"
set S_FILENAME="Sky Destroyer (J) [!].nes"
set SCRIPTNAME="skydestroyernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
