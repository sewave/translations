@echo off 
set T_FILENAME="TR_James Pond 3 - Operation Starfish (U) [!].gg"
set S_FILENAME="James Pond 3 - Operation Starfish (U) [!].gg"
set SCRIPTNAME="jamespond3gg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME% 
pause 
