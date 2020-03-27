@echo off
set T_FILENAME="TR_Super Cobra (1983) (Konami) (J).rom"
set SCRIPTNAME="supercobrarom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
