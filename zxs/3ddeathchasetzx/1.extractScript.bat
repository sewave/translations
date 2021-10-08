@echo off
set T_FILENAME="3D Deathchase.tzx"
set SCRIPTNAME="3ddeathchasetzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
