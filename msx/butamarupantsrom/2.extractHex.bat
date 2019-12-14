@echo off
set T_FILENAME="TR_Butamaru Pants (1983) (Hal) (J).rom"
set SCRIPTNAME="butamarupantsrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
