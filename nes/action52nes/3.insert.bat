@echo off
set T_FILENAME="TR_Action 52 (Active Enterprises) (REVA) [!].nes"
set S_FILENAME="Action 52 (Active Enterprises) (REVA) [!].nes"
set SCRIPTNAME="action52nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
