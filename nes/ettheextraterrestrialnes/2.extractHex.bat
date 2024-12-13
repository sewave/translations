@echo off
set T_FILENAME="TR_E.T. - The Extra Terrestrial (USA) (Digital Release) (Aftermarket) (Unl).nes"
set SCRIPTNAME="ettheextraterrestrialnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 12CF0:10,7B10:90
pause
