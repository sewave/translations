@echo off
set T_FILENAME="TR_Dunk Kids (Japan).gg"
set S_FILENAME="Dunk Kids (Japan).gg"
set SCRIPTNAME="dunkkidsgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
