@echo off
set T_FILENAME="TR_Swords and Serpents (USA).nes"
set SCRIPTNAME="swordsandserpentsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
