@echo off
set T_FILENAME="Attack of the Killer Tomatoes (USA).nes"
set SCRIPTNAME="attackofthekillertomatoesnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
