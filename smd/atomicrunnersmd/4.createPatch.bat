@echo off
set T_FILENAME="TR_Atomic Runner (USA).md"
set S_FILENAME="Atomic Runner (USA).md"
set SCRIPTNAME="atomicrunnersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
