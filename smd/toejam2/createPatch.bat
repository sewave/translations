@echo off 
set T_FILENAME="Toejam & Earl in Panic on Funkotron (U) [T+ESP].gen"
set S_FILENAME="Toejam & Earl in Panic on Funkotron (U) [!].gen"
set SCRIPTNAME="toejam2"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
