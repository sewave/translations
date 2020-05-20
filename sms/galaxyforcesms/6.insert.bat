@echo off
set T_FILENAME="TR_Galaxy Force (U) [!].sms"
set S_FILENAME="Galaxy Force (U) [!].sms"
set SCRIPTNAME="galaxyforcesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% title_F0A5.dat F0A5
java -jar Hextractor.jar -if %T_FILENAME% scene_C000.dat C000
REM java -jar Hextractor.jar -if %T_FILENAME% shield_23179.dat 23179
java -jar Hextractor.jar -if %T_FILENAME% bonus_23443.dat 23443
java -jar Hextractor.jar -if %T_FILENAME% score_17366.dat 17366
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
