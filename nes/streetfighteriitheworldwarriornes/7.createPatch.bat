@echo off
set T_FILENAME="TR_Street Fighter II - The World Warrior (Unl) [!].nes"
set S_FILENAME="Street Fighter II - The World Warrior (Unl) [!].nes"
set SCRIPTNAME="streetfighteriitheworldwarriornes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
