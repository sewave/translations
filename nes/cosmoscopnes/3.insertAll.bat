@echo off
set T_FILENAME="TR_Cosmos Cop (Spain) (Gluk Video) (Unl).nes"
set S_FILENAME="Cosmos Cop (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="cosmoscopnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
