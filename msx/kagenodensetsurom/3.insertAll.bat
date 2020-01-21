@echo off
set T_FILENAME="TR_Kageno Densetsu (1986) (Taito) (J).rom"
set S_FILENAME="Kageno Densetsu (1986) (Taito) (J).rom"
set SCRIPTNAME="kagenodensetsurom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
