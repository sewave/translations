@echo off
set T_FILENAME="TR_Elevator Action (1985) (Taito) (J).rom"
set S_FILENAME="Elevator Action (1985) (Taito) (J).rom"
set SCRIPTNAME="elevatoractionrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
