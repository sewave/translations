@echo off 
set T_FILENAME="TR_Cyber Shinobi (UE) [!].sms"
set S_FILENAME="Cyber Shinobi (UE) [!].sms"
set SCRIPTNAME="cybershi"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.ext %T_FILENAME%
pause 
