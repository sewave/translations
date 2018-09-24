@echo off
set T_FILENAME="TR_Simpsons, The - Escape from Camp Deadly (U) [!].gb"
set S_FILENAME="Simpsons, The - Escape from Camp Deadly (U) [!].gb"
set SCRIPTNAME="simpsonstheescapefromcampdeadlygb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
