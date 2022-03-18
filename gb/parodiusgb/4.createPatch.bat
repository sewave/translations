@echo off
set T_FILENAME="TR_Parodius (Europe).gb"
set S_FILENAME="Parodius (Europe).gb"
set SCRIPTNAME="parodiusgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
