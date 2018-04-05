@echo off
set T_FILENAME="TR_Duck Tales 2 (U) [!].nes"
set S_FILENAME="Duck Tales 2 (U) [!].nes"
set SCRIPTNAME="ducktales2nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
