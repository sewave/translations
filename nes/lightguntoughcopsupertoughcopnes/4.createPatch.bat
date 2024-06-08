@echo off
set T_FILENAME="TR_Lightgun Game 2 in 1 - Tough Cop + Super Tough Cop (Asia) (Unl).nes"
set S_FILENAME="Lightgun Game 2 in 1 - Tough Cop + Super Tough Cop (Asia) (Unl).nes"
set SCRIPTNAME="lightguntoughcopsupertoughcopnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
