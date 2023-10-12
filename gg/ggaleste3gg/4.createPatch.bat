@echo off
set T_FILENAME="TR_GG Aleste 3 (Japan) (En) (Aleste Collection) [FIX].gg"
set S_FILENAME="GG Aleste 3 (Japan) (En) (Aleste Collection).gg"
set SCRIPTNAME="ggaleste3gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
