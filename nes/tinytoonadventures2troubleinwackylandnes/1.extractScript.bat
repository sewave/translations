@echo off
set T_FILENAME="Tiny Toon Adventures 2 - Trouble in Wackyland (USA).nes"
set SCRIPTNAME="tinytoonadventures2troubleinwackylandnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
