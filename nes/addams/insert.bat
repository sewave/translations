set T_FILENAME="Addams Family, The (U) [T+ESP].nes"
set S_FILENAME="Addams Family, The (U) [!].nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh addamsHex.txt %T_FILENAME%
java -jar Hextractor.jar -h addams.tbl addams_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h addamsLoc.tbl addamsLocations_es.txt %T_FILENAME% false 0
pause