@echo off
set T_FILENAME="TR_Attack of the Killer Tomatoes (USA).nes"
set SCRIPTNAME="attackofthekillertomatoesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 210D0:30,220D0:30,230D0:30,21420:10
pause
