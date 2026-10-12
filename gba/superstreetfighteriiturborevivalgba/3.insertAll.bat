@echo off
set T_FILENAME="TR_Super Street Fighter II Turbo - Revival (USA).gba"
set S_FILENAME="Super Street Fighter II Turbo - Revival (USA).gba"
set SCRIPTNAME="superstreetfighteriiturborevivalgba"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
