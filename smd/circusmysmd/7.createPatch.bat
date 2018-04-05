@echo off
set T_FILENAME="TR_Great Circus Mystery, The - Starring Mickey & Minnie (U) [!].gen"
set S_FILENAME="Great Circus Mystery, The - Starring Mickey & Minnie (U) [!].gen"
set SCRIPTNAME="circusmysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
