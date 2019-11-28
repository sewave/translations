@echo off
set T_FILENAME="TR_Bomberman Special (1986) (Hudson) (J).rom"
set S_FILENAME="Bomberman Special (1986) (Hudson) (J).rom"
set SCRIPTNAME="bombermanspecialrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
