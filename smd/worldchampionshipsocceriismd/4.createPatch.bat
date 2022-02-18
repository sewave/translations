@echo off
set T_FILENAME="TR_World Championship Soccer II (USA).md"
set S_FILENAME="World Championship Soccer II (USA).md"
set SCRIPTNAME="worldchampionshipsocceriismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
