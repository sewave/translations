@echo off
set T_FILENAME="TR_Skull & Crossbones (USA) (Unl).nes"
set SCRIPTNAME="skullcrossbonesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20270:10,202E0:10,20320:10,204A0:40,23FD0:10,25F50:40,28B20:D0,26710:80,256D0:D0
pause
