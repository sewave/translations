set T_FILENAME="3 Ninjas Kick Back (U) [T+ESP].bin"
set S_FILENAME="3 Ninjas Kick Back (U) [!].bin"
set SCRIPTNAME="3ninjas"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.ext %T_FILENAME% false 0
pause