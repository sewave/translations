@echo off
set T_FILENAME="TR_Castlevania - The Adventure (USA).gb"
set S_FILENAME="Castlevania - The Adventure (USA).gb"
set SCRIPTNAME="castlevaniatheadventuregb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
