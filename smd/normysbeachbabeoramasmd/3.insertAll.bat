@echo off
set T_FILENAME="TR_Normy's Beach Babe-O-Rama (UE) [!].bin"
set S_FILENAME="Normy's Beach Babe-O-Rama (UE) [!].bin"
set SCRIPTNAME="normysbeachbabeoramasmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
