@echo off
set T_FILENAME="Quattro Adventure (USA) (Unl).nes"
set SCRIPTNAME="quattroadventurenes"
java -jar Hextractor.jar -a %SCRIPTNAME%robin.tbl %T_FILENAME% %SCRIPTNAME%robin.ext %SCRIPTNAME%robin.off
java -jar Hextractor.jar -a %SCRIPTNAME%robinAlt.tbl %T_FILENAME% %SCRIPTNAME%robinAlt.ext %SCRIPTNAME%robinAlt.off
java -jar Hextractor.jar -a %SCRIPTNAME%boomerang.tbl %T_FILENAME% %SCRIPTNAME%boomerang.ext %SCRIPTNAME%boomerang.off
java -jar Hextractor.jar -a %SCRIPTNAME%select.tbl %T_FILENAME% %SCRIPTNAME%select.ext %SCRIPTNAME%select.off
java -jar Hextractor.jar -a %SCRIPTNAME%linus.tbl %T_FILENAME% %SCRIPTNAME%linus.ext %SCRIPTNAME%linus.off
java -jar Hextractor.jar -a %SCRIPTNAME%linusAlt.tbl %T_FILENAME% %SCRIPTNAME%linusAlt.ext %SCRIPTNAME%linusAlt.off
java -jar Hextractor.jar -a %SCRIPTNAME%dizzy.tbl %T_FILENAME% %SCRIPTNAME%dizzy.ext %SCRIPTNAME%dizzy.off
pause
