@echo off 
set T_FILENAME="TR_Street Fighter 2010 - The Final Fight (U) [!].nes"
set SCRIPTNAME="sf2010"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3C3B0:280
pause 
