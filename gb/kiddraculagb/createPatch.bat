@echo off 
set T_FILENAME="TR_Kid Dracula (U) [!].gb"
set S_FILENAME="Kid Dracula (U) [!].gb"
set SCRIPTNAME="kiddraculagb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
