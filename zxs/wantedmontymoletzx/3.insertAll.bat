@echo off
set T_FILENAME="TR_Wanted - Monty Mole.tzx"
set S_FILENAME="Wanted - Monty Mole.tzx"
set SCRIPTNAME="wantedmontymoletzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
