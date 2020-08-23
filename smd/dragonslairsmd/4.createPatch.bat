@echo off
set T_FILENAME="TR_Dragon's Lair (USA) (Proto) (June, 1994).md"
set S_FILENAME="Dragon's Lair (USA) (Proto) (June, 1994).md"
set SCRIPTNAME="dragonslairsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
