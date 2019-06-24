@echo off
set T_FILENAME="Bubsy in Claws Encounters of the Furred Kind (U) [!].smc"
set SCRIPTNAME="bubsyinclawsencountersofthefurredkindsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
