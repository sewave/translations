@echo off
set T_FILENAME="TR_Resq (Europe) (Proto).md"
set S_FILENAME="Resq (Europe) (Proto).md"
set SCRIPTNAME="resqsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
