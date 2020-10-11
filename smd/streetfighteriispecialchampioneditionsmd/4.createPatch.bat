@echo off
set T_FILENAME="TR_Street Fighter II' - Special Champion Edition (USA).md"
set S_FILENAME="Street Fighter II' - Special Champion Edition (USA).md"
set SCRIPTNAME="streetfighteriispecialchampioneditionsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
