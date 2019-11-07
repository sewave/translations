@echo off
set T_FILENAME="TR_Skate Boy (Spain) (Gluk Video) (Unl).nes"
set S_FILENAME="Skate Boy (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="skateboynes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
