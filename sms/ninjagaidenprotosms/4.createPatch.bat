@echo off
set T_FILENAME="TR_Ninja Gaiden (Europe, Brazil) (Beta).sms"
set S_FILENAME="Ninja Gaiden (Europe, Brazil) (Beta).sms"
set SCRIPTNAME="ninjagaidenprotosms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
