@echo off
set T_FILENAME="TR_BlaZeon - The Bio-Cyborg Challenge (USA).sfc"
set S_FILENAME="BlaZeon - The Bio-Cyborg Challenge (USA).sfc"
set SCRIPTNAME="blazeonthebiocyborgchallengesfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
