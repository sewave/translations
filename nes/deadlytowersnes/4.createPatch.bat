@echo off
set T_FILENAME="TR_Deadly Towers (USA).nes"
set S_FILENAME="Deadly Towers (USA).nes"
set SCRIPTNAME="deadlytowersnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
