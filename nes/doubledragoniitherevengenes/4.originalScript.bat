@echo off
set T_FILENAME="Double Dragon II - The Revenge (U) (PRG1) [!].nes"
set SCRIPTNAME="doubledragoniitherevengenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
