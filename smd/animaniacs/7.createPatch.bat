@echo off
set T_FILENAME="Animaniacs (U) [T+ESP].bin"
set S_FILENAME="Animaniacs (U) [!].bin"
set SCRIPTNAME="animaniacs"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
