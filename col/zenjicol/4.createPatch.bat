@echo off
set T_FILENAME="TR_Zenji (1984) (Activision).col"
set S_FILENAME="Zenji (1984) (Activision).col"
set SCRIPTNAME="zenjicol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
