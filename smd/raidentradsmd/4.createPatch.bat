@echo off
set T_FILENAME="TR_Raiden Trad (JU) [!].bin"
set S_FILENAME="Raiden Trad (JU) [!].bin"
set SCRIPTNAME="raidentradsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
