@echo off
set T_FILENAME="Conquest of the Crystal Palace (USA).nes"
set SCRIPTNAME="conquestofthecrystalpalacenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.ext %SCRIPTNAME%Title.off
java -jar Hextractor.jar -a %SCRIPTNAME%Title2.tbl %T_FILENAME% %SCRIPTNAME%Title2.ext %SCRIPTNAME%Title2.off
java -jar Hextractor.jar -a %SCRIPTNAME%End.tbl %T_FILENAME% %SCRIPTNAME%End.ext %SCRIPTNAME%End.off
java -jar Hextractor.jar -a %SCRIPTNAME%End2.tbl %T_FILENAME% %SCRIPTNAME%End2.ext %SCRIPTNAME%End2.off
java -jar Hextractor.jar -a %SCRIPTNAME%Stage.tbl %T_FILENAME% %SCRIPTNAME%Stage.ext %SCRIPTNAME%Stage.off
pause
