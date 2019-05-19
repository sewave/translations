@echo off
set T_FILENAME="TR_Chester Cheetah - Wild Wild Quest (U) (59734).smc"
set S_FILENAME="Chester Cheetah - Wild Wild Quest (U) (59734).smc"
set SCRIPTNAME="chestercheetahwildwildquestsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
