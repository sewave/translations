@echo off
set T_FILENAME="TR_Super Shadow of the Beast (U).smc"
set S_FILENAME="Super Shadow of the Beast (U).smc"
set SCRIPTNAME="supershadowofthebeastsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
