@echo off
set T_FILENAME="TR_Spider-Man 2 - The Sinister Six (USA, Europe).gbc"
set S_FILENAME="Spider-Man 2 - The Sinister Six (USA, Europe).gbc"
set SCRIPTNAME="spiderman2thesinistersixgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
