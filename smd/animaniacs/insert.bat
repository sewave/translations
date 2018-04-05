set T_FILENAME="Animaniacs (U) [T+ESP].bin"
set S_FILENAME="Animaniacs (U) [!].bin"
set SCRIPTNAME="animaniacs"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause