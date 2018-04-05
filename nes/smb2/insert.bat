set T_FILENAME="Super Mario Bros. 2 (U) (PRG1) [T+ESP].nes"
set S_FILENAME="Super Mario Bros. 2 (U) (PRG1) [!].nes"
set SCRIPTNAME="smb2"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause