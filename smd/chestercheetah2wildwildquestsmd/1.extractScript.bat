@echo off
set T_FILENAME="Chester Cheetah 2 - Wild Wild Quest (U) [!].bin"
set SCRIPTNAME="chestercheetah2wildwildquestsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
