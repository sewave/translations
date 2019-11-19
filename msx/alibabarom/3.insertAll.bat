@echo off
set T_FILENAME="TR_Alibaba (1984) (Sony) (J).rom"
set S_FILENAME="Alibaba (1984) (Sony) (J).rom"
set SCRIPTNAME="alibabarom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
