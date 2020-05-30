@echo off
set T_FILENAME="Peter Pan & The Pirates (U) [!].nes"
set SCRIPTNAME="peterpanthepiratesnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
