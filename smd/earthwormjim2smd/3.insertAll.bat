@echo off
set T_FILENAME="TR_Earthworm Jim 2 (USA).md"
set S_FILENAME="Earthworm Jim 2 (USA).md"
set SCRIPTNAME="earthwormjim2smd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
