@echo off
set T_FILENAME="TR_Quattro Adventure (USA) (Unl).nes"
set SCRIPTNAME="quattroadventurenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B14C:40
pause
