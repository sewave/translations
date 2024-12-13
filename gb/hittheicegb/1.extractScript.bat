@echo off
set T_FILENAME="Hit the Ice - VHL - The Official Video Hockey League (USA, Europe).gb"
set SCRIPTNAME="hittheicegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
