@echo off
set T_FILENAME="Parasol Stars - The Story of Bubble Bobble 3 (E) [!].nes"
set SCRIPTNAME="parasolstarsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
