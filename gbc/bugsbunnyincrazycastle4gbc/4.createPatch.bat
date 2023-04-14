@echo off
set T_FILENAME="TR_Bugs Bunny in Crazy Castle 4 (USA).gbc"
set S_FILENAME="Bugs Bunny in Crazy Castle 4 (USA).gbc"
set SCRIPTNAME="bugsbunnyincrazycastle4gbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
