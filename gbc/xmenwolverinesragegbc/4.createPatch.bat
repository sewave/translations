@echo off
set T_FILENAME="TR_X-Men - Wolverine's Rage (USA).gbc"
set S_FILENAME="X-Men - Wolverine's Rage (USA).gbc"
set SCRIPTNAME="xmenwolverinesragegbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
