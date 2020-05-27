@echo off
set T_FILENAME="TR_Space Harrier (JU) [!].gg"
set S_FILENAME="Space Harrier (JU) [!].gg"
set SCRIPTNAME="spaceharriergg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
REM java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% D7AD.dat D7AD
java -jar Hextractor.jar -if %T_FILENAME% F826.dat F826
pause
