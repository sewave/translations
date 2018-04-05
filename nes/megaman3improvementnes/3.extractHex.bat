@echo off
set T_FILENAME="TR_Megaman3Improvement (U) [!].nes"
set SCRIPTNAME="megaman3improvementnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9A710-9A810
pause
