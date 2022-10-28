@echo off
set T_FILENAME="TR_Portal Runner (USA).gbc"
set S_FILENAME="Portal Runner (USA).gbc"
set SCRIPTNAME="portalrunnergbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
