@echo off
set T_FILENAME="TR_Exo Squad (USA).md"
set S_FILENAME="Exo Squad (USA).md"
set SCRIPTNAME="exosquadsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
