@echo off
set T_FILENAME="TR_Spelunker (1986) (Irem) (J).rom"
set S_FILENAME="Spelunker (1986) (Irem) (J).rom"
set SCRIPTNAME="spelunkerrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
