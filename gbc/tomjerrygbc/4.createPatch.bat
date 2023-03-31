@echo off
set T_FILENAME="TR_Tom & Jerry (USA, Europe).gbc"
set S_FILENAME="Tom & Jerry (USA, Europe).gbc"
set SCRIPTNAME="tomjerrygbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
