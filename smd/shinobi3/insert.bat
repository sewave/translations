@echo off 
set T_FILENAME="TR_Shinobi III - Return of the Ninja Master (U) [!].bin"
set S_FILENAME="Shinobi III - Return of the Ninja Master (U) [!].bin"
set SCRIPTNAME="shinobi3"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
