@echo off
set T_FILENAME="Desert Strike - Return to the Gulf (Europe) (SGB Enhanced).gb"
set SCRIPTNAME="desertstrikereturntothegulfgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
