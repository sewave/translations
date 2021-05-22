@echo off
set T_FILENAME="TR_Armana no Kiseki (Japan).fds"
set S_FILENAME="Armana no Kiseki (Japan).fds"
set SCRIPTNAME="armananokisekifds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
