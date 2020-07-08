@echo off
set T_FILENAME="TR_Championship Pro-Am (USA).md"
set S_FILENAME="Championship Pro-Am (USA).md"
set SCRIPTNAME="championshipproamsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
