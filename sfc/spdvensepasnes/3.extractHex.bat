@echo off
set T_FILENAME="TR_Spider-Man & Venom - Separation Anxiety (U).smc"
set SCRIPTNAME="spdvensepasnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
