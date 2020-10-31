@echo off
set T_FILENAME="TR_Volguard II (Japan).nes"
set S_FILENAME="Volguard II (Japan).nes"
set SCRIPTNAME="volguardiines"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
