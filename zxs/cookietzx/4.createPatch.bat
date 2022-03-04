@echo off
set T_FILENAME="TR_Cookie (1983)(Ultimate).tzx"
set S_FILENAME="Cookie (1983)(Ultimate).tzx"
set SCRIPTNAME="cookietzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
