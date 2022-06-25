@echo off
set T_FILENAME="TR_El. Viento (USA) [MIJET].md"
set S_FILENAME="El. Viento (USA) [MIJET].md"
set SCRIPTNAME="elvientomijetsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
