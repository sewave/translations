@echo off
set T_FILENAME="TR_Pine Applin (1984) (Zap) (J).rom"
set S_FILENAME="Pine Applin (1984) (Zap) (J).rom"
set SCRIPTNAME="pineapplinrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
