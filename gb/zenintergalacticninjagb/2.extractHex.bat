@echo off
set T_FILENAME="TR_Zen - Intergalactic Ninja (U).gb"
set SCRIPTNAME="zenintergalacticninjagb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
