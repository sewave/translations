@echo off
set T_FILENAME="TR_Last Starfighter, The (U) [!].nes"
set S_FILENAME="Last Starfighter, The (U) [!].nes"
set SCRIPTNAME="laststarfighterthenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
