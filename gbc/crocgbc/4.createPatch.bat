@echo off
set T_FILENAME="TR_Croc (USA, Europe).gbc"
set S_FILENAME="Croc (USA, Europe).gbc"
set SCRIPTNAME="crocgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
