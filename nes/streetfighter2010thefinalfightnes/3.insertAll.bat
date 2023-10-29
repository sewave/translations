@echo off
set T_FILENAME="TR_Street Fighter 2010 - The Final Fight (USA).nes"
set S_FILENAME="Street Fighter 2010 - The Final Fight (USA).nes"
set SCRIPTNAME="streetfighter2010thefinalfightnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
