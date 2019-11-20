@echo off
set T_FILENAME="TR_Slap Fight (J) [c][!].bin"
set S_FILENAME="Slap Fight (J) [c][!].bin"
set SCRIPTNAME="slapfightsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
