@echo off
set T_FILENAME="TR_Irem Skins Game, The (USA).sfc"
set S_FILENAME="Irem Skins Game, The (USA).sfc"
set SCRIPTNAME="iremskinsgamethesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
