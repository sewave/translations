@echo off
set T_FILENAME="Waterworld (Beta).gen"
set SCRIPTNAME="waterworldsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
