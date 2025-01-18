@echo off
set T_FILENAME="TR_E.T. - The Extra Terrestrial (USA) (Digital Release) (Aftermarket) (Unl) [OVERHAUL].nes"
set SCRIPTNAME="ettheextraterrestrialoverhaulnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 12610:80,7110:90,5F60:80,6F60:80,
pause
