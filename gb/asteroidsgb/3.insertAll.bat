@echo off
set T_FILENAME="TR_Asteroids (U) [M][!].gb"
set S_FILENAME="Asteroids (U) [M][!].gb"
set SCRIPTNAME="asteroidsgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
