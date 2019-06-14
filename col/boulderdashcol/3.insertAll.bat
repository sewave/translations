@echo off
set T_FILENAME="TR_Boulder Dash (1984) (Micro Fun).col"
set S_FILENAME="Boulder Dash (1984) (Micro Fun).col"
set SCRIPTNAME="boulderdashcol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
