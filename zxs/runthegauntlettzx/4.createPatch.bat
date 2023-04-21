@echo off
set T_FILENAME="TR_Run The Gauntlet.tzx"
set S_FILENAME="Run The Gauntlet.tzx"
set SCRIPTNAME="runthegauntlettzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
