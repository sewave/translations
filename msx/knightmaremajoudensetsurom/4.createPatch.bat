@echo off
set T_FILENAME="TR_Knightmare - Majou Densetsu (Japan).rom"
set S_FILENAME="Knightmare - Majou Densetsu (Japan).rom"
set SCRIPTNAME="knightmaremajoudensetsurom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
