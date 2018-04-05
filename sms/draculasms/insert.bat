set T_FILENAME="Bram Stoker's Dracula (E) [T+ESP].sms"
set S_FILENAME="Bram Stoker's Dracula (E) [!].sms"
set SCRIPTNAME="draculasms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause