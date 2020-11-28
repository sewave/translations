@echo off
set T_FILENAME="Chou Fuyuu Yousai Exed Exes (Japan).nes"
set SCRIPTNAME="choufuyuuyousaiexedexesnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
