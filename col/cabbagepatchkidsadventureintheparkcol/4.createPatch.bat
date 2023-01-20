@echo off
set T_FILENAME="TR_Cabbage Patch Kids - Adventure in the Park (1983).col"
set S_FILENAME="Cabbage Patch Kids - Adventure in the Park (1983).col"
set SCRIPTNAME="cabbagepatchkidsadventureintheparkcol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
