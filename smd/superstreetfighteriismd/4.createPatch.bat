@echo off
set T_FILENAME="TR_Super Street Fighter II (USA).md"
set S_FILENAME="Super Street Fighter II (USA).md"
set SCRIPTNAME="superstreetfighteriismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
