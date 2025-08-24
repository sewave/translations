@echo off
set T_FILENAME="TR_Sky Jaguar - Konami (1984) [RC-721] [GoodMSX] [2099].rom"
set S_FILENAME="Sky Jaguar - Konami (1984) [RC-721] [GoodMSX] [2099].rom"
set SCRIPTNAME="skyjaguarkonamirom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
