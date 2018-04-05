@echo off
set T_FILENAME="TR_Great Circus Mystery, The - Starring Mickey & Minnie (U) [!].gen"
set SCRIPTNAME="circusmysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
