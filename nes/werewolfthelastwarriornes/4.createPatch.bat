@echo off
set T_FILENAME="TR_Werewolf - The Last Warrior (USA).nes"
set S_FILENAME="Werewolf - The Last Warrior (USA).nes"
set SCRIPTNAME="werewolfthelastwarriornes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
