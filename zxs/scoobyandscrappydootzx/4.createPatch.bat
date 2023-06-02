@echo off
set T_FILENAME="TR_Scooby And Scrappy Doo.tzx"
set S_FILENAME="Scooby And Scrappy Doo.tzx"
set SCRIPTNAME="scoobyandscrappydootzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
