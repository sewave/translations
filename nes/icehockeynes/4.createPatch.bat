@echo off
set T_FILENAME="TR_Ice Hockey (U) [!].nes"
set S_FILENAME="Ice Hockey (U) [!].nes"
set SCRIPTNAME="icehockeynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
