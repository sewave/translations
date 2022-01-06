@echo off
set T_FILENAME="TR_Godzilla - Monster of Monsters! (USA).nes"
set S_FILENAME="Godzilla - Monster of Monsters! (USA).nes"
set SCRIPTNAME="godzillamonsterofmonstersnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
