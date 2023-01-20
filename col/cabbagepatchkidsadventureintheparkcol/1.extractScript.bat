@echo off
set T_FILENAME="Cabbage Patch Kids - Adventure in the Park (1983).col"
set SCRIPTNAME="cabbagepatchkidsadventureintheparkcol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
