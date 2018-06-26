@echo off 
set T_FILENAME="TR_Spider-Man and Venom - Maximum Carnage (W) [!].bin"
set S_FILENAME="Spider-Man and Venom - Maximum Carnage (W) [!].bin"
set SCRIPTNAME="spvensmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.ext %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
