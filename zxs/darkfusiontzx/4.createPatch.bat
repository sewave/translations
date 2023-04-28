@echo off
set T_FILENAME="TR_Dark Fusion.tzx"
set S_FILENAME="Dark Fusion.tzx"
set SCRIPTNAME="darkfusiontzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
