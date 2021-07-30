@echo off
set T_FILENAME="TR_Lamborghini American Challenge (USA).sfc"
set SCRIPTNAME="lamborghiniamericanchallengesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
