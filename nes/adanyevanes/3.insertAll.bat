@echo off
set T_FILENAME="TR_Adan y Eva (Spain) (Gluk Video) (Unl).nes"
set S_FILENAME="Adan y Eva (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="adanyevanes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
