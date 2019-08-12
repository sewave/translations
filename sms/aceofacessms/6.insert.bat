@echo off
set T_FILENAME="TR_Ace of Aces (E) [!].sms"
set S_FILENAME="Ace of Aces (E) [!].sms"
set SCRIPTNAME="aceofacessms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
