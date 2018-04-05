@echo off 
set T_FILENAME="TR_Prince of Persia 2 - The Shadow and The Flame (Beta).bin"
set S_FILENAME="Prince of Persia 2 - The Shadow and The Flame (Beta).bin"
set SCRIPTNAME="ppersia2"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
