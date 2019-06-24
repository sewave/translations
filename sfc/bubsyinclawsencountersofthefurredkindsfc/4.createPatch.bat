@echo off
set T_FILENAME="TR_Bubsy in Claws Encounters of the Furred Kind (U) [!].smc"
set S_FILENAME="Bubsy in Claws Encounters of the Furred Kind (U) [!].smc"
set SCRIPTNAME="bubsyinclawsencountersofthefurredkindsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
