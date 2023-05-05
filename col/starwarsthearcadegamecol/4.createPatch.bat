@echo off
set T_FILENAME="TR_Star Wars - The Arcade Game (1984) (Parker Bros).col"
set S_FILENAME="Star Wars - The Arcade Game (1984) (Parker Bros).col"
set SCRIPTNAME="starwarsthearcadegamecol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
