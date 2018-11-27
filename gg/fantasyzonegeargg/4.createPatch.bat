@echo off
set T_FILENAME="TR_Fantasy Zone Gear (JU) [!].gg"
set S_FILENAME="Fantasy Zone Gear (JU) [!].gg"
set SCRIPTNAME="fantasyzonegeargg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
