@echo off
set T_FILENAME="TR_Star Soldier (1986) (Hudson) (J).rom"
set SCRIPTNAME="starsoldierrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
