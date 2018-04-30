set T_FILENAME="Legend of Prince Valiant, The (E) [T+ESP].nes"
set S_FILENAME="Legend of Prince Valiant, The (E) [!].nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh princevaliantHex.txt %T_FILENAME%
java -jar Hextractor.jar -h princevaliant.tbl princevaliant_es.ext %T_FILENAME% false 0
pause