@echo off
set T_FILENAME="TR_Bubsy in Claws Encounters of the Furred Kind (UE) [!].bin"
set S_FILENAME="Bubsy in Claws Encounters of the Furred Kind (UE) [!].bin"
set SCRIPTNAME="bubsyinclawsencountersofthefurredkindsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
