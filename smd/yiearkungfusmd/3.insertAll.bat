@echo off
set T_FILENAME="TR_Yie Ar Kung-Fu (PD) [!].gen"
set S_FILENAME="Yie Ar Kung-Fu (PD) [!] EXP.gen"
set SCRIPTNAME="yiearkungfusmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
