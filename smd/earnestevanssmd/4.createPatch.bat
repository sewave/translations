@echo off
set T_FILENAME="TR_Earnest Evans (USA).md"
set S_FILENAME="Earnest Evans (USA).md"
set SCRIPTNAME="earnestevanssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
