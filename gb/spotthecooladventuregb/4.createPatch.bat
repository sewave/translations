@echo off
set T_FILENAME="TR_Spot - The Cool Adventure (U).gb"
set S_FILENAME="Spot - The Cool Adventure (U).gb"
set SCRIPTNAME="spotthecooladventuregb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
