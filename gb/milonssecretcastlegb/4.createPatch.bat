@echo off
set T_FILENAME="TR_Milon's Secret Castle (U) [!].gb"
set S_FILENAME="Milon's Secret Castle (U) [!].gb"
set SCRIPTNAME="milonssecretcastlegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
