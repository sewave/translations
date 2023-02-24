@echo off
set T_FILENAME="TR_Silver Eagle (Asia) (PAL) (Unl).nes"
set SCRIPTNAME="silvereaglenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 36E10:30,37E10:70,23FC0:40,348C0:10,34900:10,34990:10,34FA0:10,22110:40,38890:20,2C890:20,21B20:80,359D0:30
pause
