@echo off
set T_FILENAME="TR_RoboCop 3 (World).gg"
set S_FILENAME="RoboCop 3 (World).gg"
set SCRIPTNAME="robocop3gg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
