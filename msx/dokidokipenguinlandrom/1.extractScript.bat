@echo off
set T_FILENAME="Doki Doki Penguin Land (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="dokidokipenguinlandrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
