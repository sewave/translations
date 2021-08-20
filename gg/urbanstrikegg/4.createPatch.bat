@echo off
set T_FILENAME="TR_Urban Strike (USA).gg"
set S_FILENAME="Urban Strike (USA).gg"
set SCRIPTNAME="urbanstrikegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
