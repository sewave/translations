@echo off
set T_FILENAME="TR_Haunting Starring Polterguy (UE) [!].bin"
set S_FILENAME="Haunting Starring Polterguy (UE) [!].bin"
set SCRIPTNAME="hauntingstarringpolterguysmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
