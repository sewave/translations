@echo off
set T_FILENAME="TR_World Cup Italia '90 (Europe).md"
set S_FILENAME="World Cup Italia '90 (Europe).md"
set SCRIPTNAME="worldcupitalia90smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
