@echo off 
set T_FILENAME="TR_Pirates of Dark Water, The (UE).bin"
set S_FILENAME="Pirates of Dark Water, The (UE).bin"
set SCRIPTNAME="piratesdwsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.ext %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
