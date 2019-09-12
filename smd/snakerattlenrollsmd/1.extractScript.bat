@echo off
set T_FILENAME="Snake Rattle 'n' Roll (E) [c][!].bin"
set SCRIPTNAME="snakerattlenrollsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
