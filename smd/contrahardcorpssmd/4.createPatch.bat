@echo off
set T_FILENAME="TR_Contra - Hard Corps (USA, Korea).md"
set S_FILENAME="Contra - Hard Corps (USA, Korea).md"
set SCRIPTNAME="contrahardcorpssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
