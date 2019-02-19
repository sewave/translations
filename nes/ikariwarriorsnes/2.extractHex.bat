@echo off
set T_FILENAME="TR_Ikari Warriors (U) (PRG1) [!].nes"
set SCRIPTNAME="ikariwarriorsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
