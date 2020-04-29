@echo off
set T_FILENAME="TR_Snow White in Happily Ever After (USA).sfc"
set S_FILENAME="Snow White in Happily Ever After (USA).sfc"
set SCRIPTNAME="snowwhiteinhappilyeveraftersfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
