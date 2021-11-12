@echo off
set T_FILENAME="TR_Beetlejuice (USA).gb"
set S_FILENAME="Beetlejuice (USA).gb"
set SCRIPTNAME="beetlejuicegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
