@echo off 
set T_FILENAME="TL_Time Diver Eon Man (U) (Prototype).nes"
set S_FILENAME="Time Diver Eon Man (U) (Prototype).nes"
set SCRIPTNAME="timediver"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% 
pause 
