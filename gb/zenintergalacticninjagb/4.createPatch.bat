@echo off
set T_FILENAME="TR_Zen - Intergalactic Ninja (U).gb"
set S_FILENAME="Zen - Intergalactic Ninja (U).gb"
set SCRIPTNAME="zenintergalacticninjagb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
