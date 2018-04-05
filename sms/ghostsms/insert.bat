@echo off 
set T_FILENAME="TR_Ghostbusters (UE) [!].sms"
set S_FILENAME="Ghostbusters (UE) [!].sms"
set SCRIPTNAME="ghostsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.ext %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Items.tbl %SCRIPTNAME%Items_tr.ext %T_FILENAME% 
pause 
