@echo off
set T_FILENAME="TR_Armorines - Project S.W.A.R.M. (USA, Europe) (En,De).gbc"
set S_FILENAME="Armorines - Project S.W.A.R.M. (USA, Europe) (En,De).gbc"
set SCRIPTNAME="armorinesprojectswarmgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
