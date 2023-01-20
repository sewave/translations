@echo off
set T_FILENAME="TR_Cabbage Patch Kids - Adventure in the Park (1983).col"
set S_FILENAME="Cabbage Patch Kids - Adventure in the Park (1983).col"
set SCRIPTNAME="cabbagepatchkidsadventureintheparkcol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
