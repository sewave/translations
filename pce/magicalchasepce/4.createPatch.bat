@echo off
set T_FILENAME="TR_Magical Chase (U) [!].pce"
set S_FILENAME="Magical Chase (U) [!].pce"
set SCRIPTNAME="magicalchasepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
