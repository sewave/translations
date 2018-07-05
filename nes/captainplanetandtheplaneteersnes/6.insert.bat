@echo off
set T_FILENAME="TR_Captain Planet and The Planeteers (U) [!].nes"
set S_FILENAME="Captain Planet and The Planeteers (U) [!].nes"
set SCRIPTNAME="captainplanetandtheplaneteersnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
