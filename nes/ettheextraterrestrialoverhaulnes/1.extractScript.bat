@echo off
set T_FILENAME="E.T. - The Extra Terrestrial (USA) (Digital Release) (Aftermarket) (Unl) [OVERHAUL].nes"
set SCRIPTNAME="ettheextraterrestrialoverhaulnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.ext %SCRIPTNAME%Alt2.off
pause
