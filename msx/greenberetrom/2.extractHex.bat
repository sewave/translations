@echo off
set T_FILENAME="TR_Green Beret (1986)(Konami).rom"
set SCRIPTNAME="greenberetrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
