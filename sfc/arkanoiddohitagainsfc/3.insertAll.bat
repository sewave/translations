@echo off
set T_FILENAME="TR_Arkanoid - Doh It Again (USA).sfc"
set S_FILENAME="Arkanoid - Doh It Again (USA).sfc"
set SCRIPTNAME="arkanoiddohitagainsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
