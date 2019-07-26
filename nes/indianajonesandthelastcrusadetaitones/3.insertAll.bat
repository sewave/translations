@echo off
set T_FILENAME="TR_Indiana Jones and the Last Crusade (U) (Taito) [!].nes"
set S_FILENAME="Indiana Jones and the Last Crusade (U) (Taito) [!].nes"
set SCRIPTNAME="indianajonesandthelastcrusadenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
