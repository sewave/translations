@echo off
set T_FILENAME="Street Fighter 2010 - The Final Fight (USA).nes"
set SCRIPTNAME="streetfighter2010thefinalfightnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
