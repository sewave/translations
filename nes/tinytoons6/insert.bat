@echo off 
set T_FILENAME="TR_Tiny Toon Adventures 6 (Unl) [!].nes"
set S_FILENAME="Tiny Toon Adventures 6 (Unl) [!].nes"
set SCRIPTNAME="tinytoons6"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.ext %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%End.tbl %SCRIPTNAME%End_tr.ext %T_FILENAME% 
pause 
