@echo off
set T_FILENAME="TR_Gatsby.nes"
set S_FILENAME="Gatsby.nes"
set SCRIPTNAME="gatsbynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
