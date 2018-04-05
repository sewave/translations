@echo off
set T_FILENAME="Desert Strike - Return to the Gulf (UE) [T+ESP].gen"
set S_FILENAME="Desert Strike - Return to the Gulf (UE) [!].gen"
set SCRIPTNAME="desertstrikesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause