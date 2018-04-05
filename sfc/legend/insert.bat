@echo off 
set T_FILENAME="TR_Legend (U) (718).smc"
set S_FILENAME="Legend (U) (718).smc"
set SCRIPTNAME="legend"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
java -jar Hextractor.jar -fcs %T_FILENAME% 
pause 
