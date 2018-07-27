@echo off
set T_FILENAME="TR_Tom & Jerry (U) [!].nes"
set S_FILENAME="Tom & Jerry (U) [!].nes"
set SCRIPTNAME="tomjerrynes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
