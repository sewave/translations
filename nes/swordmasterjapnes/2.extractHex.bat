@echo off
set T_FILENAME="TR_Sword Master (J) [!].nes"
set SCRIPTNAME="swordmasterjapnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20210:100,20CE0:100
pause
