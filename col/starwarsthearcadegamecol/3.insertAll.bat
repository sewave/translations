@echo off
set T_FILENAME="TR_Star Wars - The Arcade Game (1984) (Parker Bros).col"
set S_FILENAME="Star Wars - The Arcade Game (1984) (Parker Bros).col"
set SCRIPTNAME="starwarsthearcadegamecol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
