@echo off
set T_FILENAME="Mickey's Dangerous Chase (U) [!].gb"
set SCRIPTNAME="mickeysdangerouschasegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
