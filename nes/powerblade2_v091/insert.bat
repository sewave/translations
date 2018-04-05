set T_FILENAME="Power Blade 2 (U) [T+ESP].nes"
set S_FILENAME="Power Blade 2 (U) [!].nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh powerblade2Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h powerblade2.tbl powerblade2_es.txt %T_FILENAME% false 0
pause