@echo off
set T_FILENAME="TR_Snoopy - Magic Show (U) [!].gb"
set S_FILENAME="Snoopy - Magic Show (U) [!].gb"
set SCRIPTNAME="snoopymagicshowgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
