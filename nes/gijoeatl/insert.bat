set T_FILENAME="G.I. Joe - The Atlantis Factor (U) [T+ESP].nes"
set S_FILENAME="G.I. Joe - The Atlantis Factor (U) [!].nes"
set SCRIPTNAME="gijoeatl"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause