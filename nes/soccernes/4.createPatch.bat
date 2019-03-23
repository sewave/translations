@echo off
set T_FILENAME="TR_Soccer (JU) [!].nes"
set S_FILENAME="Soccer (JU) [!].nes"
set SCRIPTNAME="soccernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
