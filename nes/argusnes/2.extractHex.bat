@echo off
set T_FILENAME="TR_Argus (J) [!].nes"
set SCRIPTNAME="argusnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8F10:A0,AF10:A0,B1B0:A0
pause
