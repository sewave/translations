set T_FILENAME="Dragon Warrior III (U) [T+ESP].nes"
set S_FILENAME="Dragon Warrior III (U).nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh dw3hex.txt %T_FILENAME%
java -jar Hextractor.jar -h dw3.tbl dw3_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h dw3.tbl dw3OffVoice_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h dw3.tbl dw3names_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h dw3Legend.tbl dw3Legend_es.txt %T_FILENAME% false 0
pause