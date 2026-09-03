@echo off
set T_FILENAME="TR_Into The Eagle's Nest.tzx"
set S_FILENAME="Into The Eagle's Nest.tzx"
set SCRIPTNAME="intotheeaglesnesttzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
