@echo off
set T_FILENAME="TR_Syndicate (USA, Europe) (En,Fr,De).md"
set S_FILENAME="Syndicate (USA, Europe) (En,Fr,De).md"
set SCRIPTNAME="syndicatesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
