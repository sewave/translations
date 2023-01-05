@echo off
set T_FILENAME="SpongeBob SquarePants - Legend of the Lost Spatula (USA, Europe).gbc"
set SCRIPTNAME="spongebobsquarepantslegendofthelostspatulagbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
