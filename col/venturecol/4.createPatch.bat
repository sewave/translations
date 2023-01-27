@echo off
set T_FILENAME="TR_Venture (1982) (Exidy).col"
set S_FILENAME="Venture (1982) (Exidy).col"
set SCRIPTNAME="venturecol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
