@echo off
set T_FILENAME="TR_Chakan - The Forever Man (UE) [!].gen"
set S_FILENAME="Chakan - The Forever Man (UE) [!].gen"
set SCRIPTNAME="chakantheforevermansmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
