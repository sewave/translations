@echo off
set T_FILENAME="TR_Psychic World (USA, Europe) (Rev 1).gg"
set S_FILENAME="Psychic World (USA, Europe) (Rev 1).gg"
set SCRIPTNAME="psychicworldgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
