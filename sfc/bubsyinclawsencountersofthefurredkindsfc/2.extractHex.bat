@echo off
set T_FILENAME="TR_Bubsy in Claws Encounters of the Furred Kind (U) [!].smc"
set SCRIPTNAME="bubsyinclawsencountersofthefurredkindsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
