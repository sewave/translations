@echo off
set T_FILENAME="Berenstain Bears', The - Camping Adventure (U) [!].gg"
set SCRIPTNAME="berenstainbearsthecampingadventuregg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
