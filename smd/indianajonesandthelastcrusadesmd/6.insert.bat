@echo off
set T_FILENAME="TR_Indiana Jones and the Last Crusade (U) [c][!].gen"
set S_FILENAME="Indiana Jones and the Last Crusade (U) [c][!].gen"
set SCRIPTNAME="indianajonesandthelastcrusadesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
