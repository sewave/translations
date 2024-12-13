@echo off
set T_FILENAME="E.T. - The Extra Terrestrial (USA) (Digital Release) (Aftermarket) (Unl).nes"
set SCRIPTNAME="ettheextraterrestrialnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
