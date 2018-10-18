@echo off
set T_FILENAME="TR_Hang-On 2 (SG-1000).sg"
set S_FILENAME="Hang-On 2 (SG-1000).sg"
set SCRIPTNAME="hangon2sg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
