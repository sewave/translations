@echo off
set T_FILENAME="TR_Coca Cola Kid (J) [T+ENG].gg"
set S_FILENAME="Coca Cola Kid (J) [!].gg"
set SCRIPTNAME="cocacolakidgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
