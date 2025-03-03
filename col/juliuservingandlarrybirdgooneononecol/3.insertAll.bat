@echo off
set T_FILENAME="TR_Julius Erving and Larry Bird Go - One-on-One (USA).col"
set S_FILENAME="Julius Erving and Larry Bird Go - One-on-One (USA).col"
set SCRIPTNAME="juliuservingandlarrybirdgooneononecol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
