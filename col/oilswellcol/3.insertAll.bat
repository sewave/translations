@echo off
set T_FILENAME="TR_Oil's Well (1984) (Sierravision).col"
set S_FILENAME="Oil's Well (1984) (Sierravision).col"
set SCRIPTNAME="oilswellcol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
