@echo off
set T_FILENAME="TR_Pooyan (1985) (Hudson) (J).rom"
set S_FILENAME="Pooyan (1985) (Hudson) (J).rom"
set SCRIPTNAME="pooyanrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
