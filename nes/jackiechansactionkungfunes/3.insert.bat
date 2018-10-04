@echo off
set T_FILENAME="TR_Jackie Chan's Action Kung Fu (U) [!].nes"
set S_FILENAME="Jackie Chan's Action Kung Fu (U) [!].nes"
set SCRIPTNAME="jackiechansactionkungfunes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
