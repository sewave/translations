@echo off
set T_FILENAME="TR_Binary Land (1984)(Kuma Computers).rom"
set S_FILENAME="Binary Land (1984)(Kuma Computers).rom"
set SCRIPTNAME="binarylandrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
