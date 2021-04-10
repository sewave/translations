@echo off
set T_FILENAME="Castle of Illusion Starring Mickey Mouse (USA, Brazil).sms"
set SCRIPTNAME="castleofillusionstarringmickeymousesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
