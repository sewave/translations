@echo off
set T_FILENAME="TR_Bill's Tomato Game (USA) (Proto).md"
set S_FILENAME="Bill's Tomato Game (USA) (Proto).md"
set SCRIPTNAME="billstomatogamesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
