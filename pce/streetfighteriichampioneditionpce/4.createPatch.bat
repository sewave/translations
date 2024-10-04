@echo off
set T_FILENAME="TR_Street Fighter II' - Champion Edition (Japan) [T+ENG_Cabbage].pce"
set S_FILENAME="Street Fighter II' - Champion Edition (Japan).pce"
set SCRIPTNAME="streetfighteriichampioneditionpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
