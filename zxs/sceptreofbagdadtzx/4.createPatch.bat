@echo off
set T_FILENAME="TR_Sceptre Of Bagdad.tzx"
set S_FILENAME="Sceptre Of Bagdad.tzx"
set SCRIPTNAME="sceptreofbagdadtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
