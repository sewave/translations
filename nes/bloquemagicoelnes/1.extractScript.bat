@echo off
set T_FILENAME="Bloque Magico, El (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="bloquemagicoelnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
