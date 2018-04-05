set T_FILENAME="Double Dragon III - The Rosetta Stone (J) [T+ESP].nes"
set S_FILENAME="Double Dragon III - The Rosetta Stone (J) [T+ENG].nes"
set SCRIPTNAME="dd3"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause