@echo off
set T_FILENAME="TR_Jetpac (1983)(Ultimate).tzx"
set S_FILENAME="Jetpac (1983)(Ultimate).tzx"
set SCRIPTNAME="jetpactzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
