@echo off
set T_FILENAME="TR_Lemmings (USA) (Rev 1).sfc"
set S_FILENAME="Lemmings (USA) (Rev 1).sfc"
set SCRIPTNAME="lemmingssfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
