@echo off
set T_FILENAME="Beauty and the Beast (U).smc"
set SCRIPTNAME="beautybeastsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
