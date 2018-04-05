@echo off 
set T_FILENAME="TR_Street Fighter 2010 - The Final Fight (U) [!].nes"
set S_FILENAME="Street Fighter 2010 - The Final Fight (U) [!].nes"
set SCRIPTNAME="sf2010"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
