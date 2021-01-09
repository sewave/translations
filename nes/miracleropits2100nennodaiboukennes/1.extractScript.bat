@echo off
set T_FILENAME="Miracle Ropit's - 2100 Nen no Daibouken (Japan).nes"
set SCRIPTNAME="miracleropits2100nennodaiboukennes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
