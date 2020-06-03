@echo off
set T_FILENAME="TR_Aerostar (USA, Europe).gb"
set S_FILENAME="Aerostar (USA, Europe).gb"
set SCRIPTNAME="aerostargb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
