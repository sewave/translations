@echo off
set T_FILENAME="TR_Double Dribble - 5 on 5 (USA).gb"
set S_FILENAME="Double Dribble - 5 on 5 (USA).gb"
set SCRIPTNAME="doubledribble5on5gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
