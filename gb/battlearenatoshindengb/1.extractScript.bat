@echo off
set T_FILENAME="Battle Arena Toshinden (USA) (SGB Enhanced).gb"
set SCRIPTNAME="battlearenatoshindengb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
