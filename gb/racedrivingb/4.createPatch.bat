@echo off
set T_FILENAME="TR_Race Drivin' (USA, Europe).gb"
set S_FILENAME="Race Drivin' (USA, Europe).gb"
set SCRIPTNAME="racedrivingb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
