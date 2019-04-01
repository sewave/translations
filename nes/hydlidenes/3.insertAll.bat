@echo off
set T_FILENAME="TR_Hydlide (U) [!].nes"
set S_FILENAME="Hydlide (U) [!].nes"
set SCRIPTNAME="hydlidenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
