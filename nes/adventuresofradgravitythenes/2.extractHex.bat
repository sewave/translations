@echo off
set T_FILENAME="TR_Adventures of Rad Gravity, The (USA).nes"
set SCRIPTNAME="adventuresofradgravitythenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E1A0:30,2D5D0:50,2C290:10
pause
