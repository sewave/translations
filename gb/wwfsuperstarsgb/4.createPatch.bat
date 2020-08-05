@echo off
set T_FILENAME="TR_WWF Superstars (USA, Europe).gb"
set S_FILENAME="WWF Superstars (USA, Europe).gb"
set SCRIPTNAME="wwfsuperstarsgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
