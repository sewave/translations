@echo off
set T_FILENAME="TR_Temple Dilemma (USA) (Aftermarket) (Unl).nes"
set SCRIPTNAME="templedilemmanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 752F0:10,4C6C0:20,54150:20,546C0:20,55B60:30,55ED0:40,55FD0:40,41AD0:40,41BD0:40,75B70:10,4AA10:40,4AB10:40
pause
