@echo off
set T_FILENAME="TR_10-Yard Fight (USA, Europe).nes"
set S_FILENAME="10-Yard Fight (USA, Europe).nes"
set SCRIPTNAME="10yardfightnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
