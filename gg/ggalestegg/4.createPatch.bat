@echo off
set T_FILENAME="TR_GG Aleste (J).gg"
set S_FILENAME="GG Aleste (J).gg"
set SCRIPTNAME="ggalestegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
