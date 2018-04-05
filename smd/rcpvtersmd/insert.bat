@echo off 
set T_FILENAME="TL_Robocop Versus The Terminator (U) [!].bin"
set S_FILENAME="Robocop Versus The Terminator (U) [!].bin"
set SCRIPTNAME="rcpvtersmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
