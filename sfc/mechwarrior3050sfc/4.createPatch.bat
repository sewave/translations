@echo off
set T_FILENAME="TR_MechWarrior 3050 (USA).sfc"
set S_FILENAME="MechWarrior 3050 (USA).sfc"
set SCRIPTNAME="mechwarrior3050sfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
