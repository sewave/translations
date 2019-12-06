@echo off
set T_FILENAME="TR_Gyrodine (1986) (Taito) (J).rom"
set S_FILENAME="Gyrodine (1986) (Taito) (J).rom"
set SCRIPTNAME="gyrodinerom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
