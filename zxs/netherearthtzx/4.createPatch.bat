@echo off
set T_FILENAME="TR_Nether Earth.tzx"
set S_FILENAME="Nether Earth.tzx"
set SCRIPTNAME="netherearthtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
