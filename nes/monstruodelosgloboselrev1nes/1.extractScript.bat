@echo off
set T_FILENAME="Monstruo de los globos, El (Spain) (Rev 1) (Gluk Video) (Unl).nes"
set SCRIPTNAME="monstruodelosgloboselrev1nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
