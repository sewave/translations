@echo off
set T_FILENAME="Probotector II - Return of the Evil Forces (Europe).nes"
set SCRIPTNAME="probotectoriireturnoftheevilforcesnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
