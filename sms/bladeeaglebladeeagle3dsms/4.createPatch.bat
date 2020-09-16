@echo off
set T_FILENAME="TR_Blade Eagle ~ Blade Eagle 3-D (World).sms"
set S_FILENAME="Blade Eagle ~ Blade Eagle 3-D (World).sms"
set SCRIPTNAME="bladeeaglebladeeagle3dsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
