@echo off
set T_FILENAME="TR_Quattro Adventure (USA) (Unl).nes"
set S_FILENAME="Quattro Adventure (USA) (Unl).nes"
set SCRIPTNAME="quattroadventurenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%robin.tbl tr_%SCRIPTNAME%robin.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%robinAlt.tbl tr_%SCRIPTNAME%robinAlt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%boomerang.tbl tr_%SCRIPTNAME%boomerang.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%select.tbl tr_%SCRIPTNAME%select.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%linus.tbl tr_%SCRIPTNAME%linus.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%linusAlt.tbl tr_%SCRIPTNAME%linusAlt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%dizzy.tbl tr_%SCRIPTNAME%dizzy.ext %T_FILENAME%
pause
