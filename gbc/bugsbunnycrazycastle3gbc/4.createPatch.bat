@echo off
set T_FILENAME="TR_Bugs Bunny - Crazy Castle 3 (USA, Europe).gbc"
set S_FILENAME="Bugs Bunny - Crazy Castle 3 (USA, Europe).gbc"
set SCRIPTNAME="bugsbunnycrazycastle3gbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
