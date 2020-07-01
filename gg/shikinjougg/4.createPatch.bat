@echo off
set T_FILENAME="TR_Shikinjou (J).gg"
set S_FILENAME="Shikinjou (J).gg"
set SCRIPTNAME="shikinjougg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
