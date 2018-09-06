@echo off 
set T_FILENAME="Toejam & Earl in Panic on Funkotron (U) [!]_chars.gen.nes"
set SCRIPTNAME="toejam2"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex ADFDC:20,AE4DC:C0
pause 
