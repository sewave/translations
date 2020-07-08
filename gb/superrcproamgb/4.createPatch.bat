@echo off
set T_FILENAME="TR_Super R.C. Pro-Am (USA, Europe).gb"
set S_FILENAME="Super R.C. Pro-Am (USA, Europe).gb"
set SCRIPTNAME="superrcproamgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
