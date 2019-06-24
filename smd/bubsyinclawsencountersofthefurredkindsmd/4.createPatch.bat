@echo off
set T_FILENAME="TR_Bubsy in Claws Encounters of the Furred Kind (UE) [!].bin"
set S_FILENAME="Bubsy in Claws Encounters of the Furred Kind (UE) [!].bin"
set SCRIPTNAME="bubsyinclawsencountersofthefurredkindsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
