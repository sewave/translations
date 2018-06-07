@echo off 
set T_FILENAME="TR_Twinkle Tale (J) [T+Eng20070328_MIJET].bin"
set S_FILENAME="Twinkle Tale (J) [T+Eng20070328_MIJET].bin"
set SCRIPTNAME="twinkle"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.ext %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
