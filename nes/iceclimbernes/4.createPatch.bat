@echo off
set T_FILENAME="TR_Ice Climber (U) [!].nes"
set S_FILENAME="Ice Climber (U) [!].nes"
set SCRIPTNAME="iceclimbernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
