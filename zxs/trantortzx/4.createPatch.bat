@echo off
set T_FILENAME="TR_Trantor (Erbe).tzx"
set S_FILENAME="Trantor (Erbe).tzx"
set SCRIPTNAME="trantortzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
