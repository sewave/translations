@echo off
set T_FILENAME="BlaZeon - The Bio-Cyborg Challenge (USA).sfc"
set SCRIPTNAME="blazeonthebiocyborgchallengesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
