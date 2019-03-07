@echo off
set T_FILENAME="TR_Balloon Fight (U) [!].nes"
set S_FILENAME="Balloon Fight (U) [!].nes"
set SCRIPTNAME="balloonfightnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
