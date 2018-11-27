@echo off
set T_FILENAME="TR_Toxic Crusaders (U) [!].bin"
set S_FILENAME="Toxic Crusaders (U) [!].bin"
set SCRIPTNAME="toxiccrusaderssmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
