@echo off
set T_FILENAME="TR_Space Marauder (USA).gbc"
set SCRIPTNAME="spacemaraudergbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20D20:30,20B20:10,27000:500,17940:60,14140:30,14770:80,15460:20,19860:20,19960:20
pause
