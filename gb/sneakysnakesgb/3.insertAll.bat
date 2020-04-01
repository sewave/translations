@echo off
set T_FILENAME="TR_Sneaky Snakes (UE) [!].gb"
set S_FILENAME="Sneaky Snakes (UE) [!].gb"
set SCRIPTNAME="sneakysnakesgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
