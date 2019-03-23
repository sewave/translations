@echo off
set T_FILENAME="TR_Devil World (J) [!].nes"
set S_FILENAME="Devil World (J) [!].nes"
set SCRIPTNAME="devilworldnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
