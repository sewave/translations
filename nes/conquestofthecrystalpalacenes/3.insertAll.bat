@echo off
set T_FILENAME="TR_Conquest of the Crystal Palace (USA).nes"
set S_FILENAME="Conquest of the Crystal Palace (USA).nes"
set SCRIPTNAME="conquestofthecrystalpalacenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl tr_%SCRIPTNAME%Title.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Title2.tbl tr_%SCRIPTNAME%Title2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%End.tbl tr_%SCRIPTNAME%End.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%End2.tbl tr_%SCRIPTNAME%End2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Stage.tbl tr_%SCRIPTNAME%Stage.ext %T_FILENAME%
pause
