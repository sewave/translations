@echo off
set T_FILENAME="TR_Batman Forever (World).gg"
set S_FILENAME="Batman Forever (World).gg"
set SCRIPTNAME="batmanforevergg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause