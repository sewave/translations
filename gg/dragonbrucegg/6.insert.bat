@echo off
set T_FILENAME="TR_Dragon - The Bruce Lee Story (U) [!].gg"
set S_FILENAME="Dragon - The Bruce Lee Story (U) [!].gg"
set SCRIPTNAME="dragonbrucegg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
