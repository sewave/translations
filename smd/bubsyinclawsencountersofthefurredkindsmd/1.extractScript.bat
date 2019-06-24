@echo off
set T_FILENAME="Bubsy in Claws Encounters of the Furred Kind (UE) [!].bin"
set SCRIPTNAME="bubsyinclawsencountersofthefurredkindsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
