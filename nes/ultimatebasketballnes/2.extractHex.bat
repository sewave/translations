@echo off
set T_FILENAME="TR_Ultimate Basketball (USA).nes"
set SCRIPTNAME="ultimatebasketballnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 22760:80,2BE80:10,22650:80,21590:10,215D0:10,27B10:30
pause
