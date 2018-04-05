@echo off 
set T_FILENAME="TR_El Viento Enhancement by MIJET (Hack).bin"
set S_FILENAME="El Viento Enhancement by MIJET (Hack).bin"
set SCRIPTNAME="elviento"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.txt %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
