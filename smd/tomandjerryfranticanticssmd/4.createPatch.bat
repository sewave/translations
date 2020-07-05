@echo off
set T_FILENAME="TR_Tom and Jerry - Frantic Antics! (USA).md"
set S_FILENAME="Tom and Jerry - Frantic Antics! (USA).md"
set SCRIPTNAME="tomandjerryfranticanticssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
