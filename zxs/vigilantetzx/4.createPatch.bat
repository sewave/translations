@echo off
set T_FILENAME="TR_Vigilante (Erbe).tzx"
set S_FILENAME="Vigilante (Erbe).tzx"
set SCRIPTNAME="vigilantetzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
