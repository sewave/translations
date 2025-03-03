@echo off
set T_FILENAME="Julius Erving and Larry Bird Go - One-on-One (USA).col"
set SCRIPTNAME="juliuservingandlarrybirdgooneononecol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
