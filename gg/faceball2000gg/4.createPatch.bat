@echo off
set T_FILENAME="TR_Faceball 2000 (Japan).gg"
set S_FILENAME="Faceball 2000 (Japan).gg"
set SCRIPTNAME="faceball2000gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
