@echo off 
set T_FILENAME="TR_Robocop versus The Terminator (U) [!].gg"
set S_FILENAME="Robocop versus The Terminator (U) [!].gg"
set SCRIPTNAME="rbcvstrmgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
