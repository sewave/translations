@echo off
set T_FILENAME="Kid Kool and the Quest for the 7 Wonder Herbs (U) [!].nes"
set SCRIPTNAME="kidkoolandthequestforthe7wonderherbsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
