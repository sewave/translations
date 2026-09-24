@echo off
set T_FILENAME="TR_Shining Force - The Sword of Hajya (USA).gg"
set S_FILENAME="Shining Force - The Sword of Hajya (USA).gg"
set SCRIPTNAME="shiningforcetheswordofhajyagg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
