@echo off
set T_FILENAME="TR_Space Ace (USA).sfc"
set S_FILENAME="Space Ace (USA).sfc"
set SCRIPTNAME="spaceacesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
