@echo off
set T_FILENAME="TR_Alcazar - The Forgotten Fortress (1985) (Activision).col"
set S_FILENAME="Alcazar - The Forgotten Fortress (1985) (Activision).col"
set SCRIPTNAME="alcazartheforgottenfortresscol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
