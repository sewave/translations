@echo off
set T_FILENAME="Bugs Bunny - Crazy Castle 3 (USA, Europe).gbc"
set SCRIPTNAME="bugsbunnycrazycastle3gbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
