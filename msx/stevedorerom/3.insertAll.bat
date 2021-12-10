@echo off
set T_FILENAME="TR_Stevedore (2020) (theNestruo & Wonder) [v1.2].rom"
set S_FILENAME="Stevedore (2020) (theNestruo & Wonder) [v1.2].rom"
set SCRIPTNAME="stevedorerom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
