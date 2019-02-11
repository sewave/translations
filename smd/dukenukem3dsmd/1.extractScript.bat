@echo off
set T_FILENAME="Duke Nukem 3D (B) [!].bin"
set SCRIPTNAME="dukenukem3dsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
