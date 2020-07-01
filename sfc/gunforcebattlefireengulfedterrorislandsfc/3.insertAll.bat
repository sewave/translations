@echo off
set T_FILENAME="TR_Gunforce - Battle Fire Engulfed Terror Island (U).smc"
set S_FILENAME="Gunforce - Battle Fire Engulfed Terror Island (U).smc"
set SCRIPTNAME="gunforcebattlefireengulfedterrorislandsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
