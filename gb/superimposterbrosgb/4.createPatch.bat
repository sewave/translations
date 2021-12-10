@echo off
set T_FILENAME="TR_Super_Imposter_Bros.gb"
set S_FILENAME="Super_Imposter_Bros.gb"
set SCRIPTNAME="superimposterbrosgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
