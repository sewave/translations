@echo off
set T_FILENAME="TR_Baby's Day Out (USA) (Proto).md"
set SCRIPTNAME="babysdayoutsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 192A6:120,199C6:C0,2D286:120,2D9A6:C0
pause
