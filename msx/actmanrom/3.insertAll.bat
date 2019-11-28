@echo off
set T_FILENAME="TR_Actman (1984) (Mass Tael) (J).rom"
set S_FILENAME="Actman (1984) (Mass Tael) (J).rom"
set SCRIPTNAME="actmanrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
