@echo off 
set T_FILENAME="TR_Mitsume ga Tooru (J) [T-Eng1.01_Toma].nes"
set S_FILENAME="Mitsume ga Tooru (J).nes"
set SCRIPTNAME="mitsumegatooru"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
