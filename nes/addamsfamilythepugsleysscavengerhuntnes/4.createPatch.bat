@echo off
set T_FILENAME="TR_Addams Family, The - Pugsley's Scavenger Hunt (U) [!].nes"
set S_FILENAME="Addams Family, The - Pugsley's Scavenger Hunt (U) [!].nes"
set SCRIPTNAME="addamsfamilythepugsleysscavengerhuntnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
