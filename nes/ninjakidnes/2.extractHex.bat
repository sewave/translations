@echo off
set T_FILENAME="TR_Ninja Kid (USA).nes"
set SCRIPTNAME="ninjakidnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BDD0:30,BED0:30,BF30:40,F580:20
pause
