@echo off
set T_FILENAME="TR_Yoshi's Cookie (USA, Europe).gb"
set S_FILENAME="Yoshi's Cookie (USA, Europe).gb"
set SCRIPTNAME="yoshiscookiegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause