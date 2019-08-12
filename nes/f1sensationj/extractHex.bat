@echo off 
set T_FILENAME="TR_F-1 Sensation (J).nes"
set SCRIPTNAME="f1sensationj"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E110:10
pause 
