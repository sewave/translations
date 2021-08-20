@echo off
set T_FILENAME="TR_Cobra Mission (Asia) (Unl).nes"
set SCRIPTNAME="cobramissionnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 15120:60,15F10:80,17F10:80,19F10:80,1BF10:80,1DF10:80,1B120:60,18990:90
pause
