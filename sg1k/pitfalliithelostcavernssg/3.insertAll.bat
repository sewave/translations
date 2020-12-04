@echo off
set T_FILENAME="TR_Pitfall II - The Lost Caverns (Japan).sg"
set S_FILENAME="Pitfall II - The Lost Caverns (Japan).sg"
set SCRIPTNAME="pitfalliithelostcavernssg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
