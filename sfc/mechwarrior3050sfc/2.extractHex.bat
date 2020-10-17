@echo off
set T_FILENAME="TR_MechWarrior 3050 (USA).sfc"
set SCRIPTNAME="mechwarrior3050sfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11D359:80,11D6D9:60,11D929:80,11DCA9:60,11D4D9:10,11DAA9:10
pause
