@echo off
set T_FILENAME="TR_Cabbage Patch Kids - Adventure in the Park (1983).col"
set SCRIPTNAME="cabbagepatchkidsadventureintheparkcol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A8C:20
pause
