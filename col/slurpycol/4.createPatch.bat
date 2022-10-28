@echo off
set T_FILENAME="TR_Slurpy (1984) (Xonox).col"
set S_FILENAME="Slurpy (1984) (Xonox).col"
set SCRIPTNAME="slurpycol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
