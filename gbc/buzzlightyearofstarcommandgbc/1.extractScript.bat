@echo off
set T_FILENAME="Buzz Lightyear of Star Command (USA, Europe).gbc"
set SCRIPTNAME="buzzlightyearofstarcommandgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
