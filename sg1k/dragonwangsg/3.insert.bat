@echo off
set T_FILENAME="TR_Dragon Wang (SG-1000) (Ver-A).sg"
set S_FILENAME="Dragon Wang (SG-1000) (Ver-A).sg"
set SCRIPTNAME="dragonwangsg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
