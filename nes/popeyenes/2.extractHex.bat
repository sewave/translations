@echo off
set T_FILENAME="TR_Popeye (W) (PRG1) [!].nes"
set SCRIPTNAME="popeyenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4A10:40,5490:20,5570:20,51B0:10,5200:100
pause
