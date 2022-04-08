@echo off
set T_FILENAME="TR_Blaster Master - Enemy Below (USA, Europe) (SGB Enhanced).gbc"
set S_FILENAME="Blaster Master - Enemy Below (USA, Europe) (SGB Enhanced).gbc"
set SCRIPTNAME="blastermasterenemybelowgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
