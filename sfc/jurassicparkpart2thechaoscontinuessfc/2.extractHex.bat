@echo off
set T_FILENAME="TR_Jurassic Park Part 2 - The Chaos Continues (USA) (En,Fr,De,It).sfc"
set SCRIPTNAME="jurassicparkpart2thechaoscontinuessfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 14A237:160
pause
