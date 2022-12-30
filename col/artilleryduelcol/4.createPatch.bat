@echo off
set T_FILENAME="TR_Artillery Duel (1983) (Xonox).col"
set S_FILENAME="Artillery Duel (1983) (Xonox).col"
set SCRIPTNAME="artilleryduelcol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
