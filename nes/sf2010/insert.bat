@echo off 
set T_FILENAME="TR_Street Fighter 2010 - The Final Fight (U) [!].nes"
set S_FILENAME="Street Fighter 2010 - The Final Fight (U) [!].nes"
set SCRIPTNAME="sf2010"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.txt %T_FILENAME% 
pause 
