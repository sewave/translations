@echo off
set T_FILENAME="TR_Double Dribble - The Playoff Edition (USA).md"
set S_FILENAME="Double Dribble - The Playoff Edition (USA).md"
set SCRIPTNAME="doubledribbletheplayoffeditionsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
