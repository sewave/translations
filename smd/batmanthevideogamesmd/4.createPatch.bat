@echo off
set T_FILENAME="TR_Batman - The Video Game (USA).md"
set S_FILENAME="Batman - The Video Game (USA).md"
set SCRIPTNAME="batmanthevideogamesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
