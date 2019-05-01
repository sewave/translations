@echo off
set T_FILENAME="TR_Twin Hawk (JE) [!].bin"
set S_FILENAME="Twin Hawk (JE) [!].bin"
set SCRIPTNAME="twinhawksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
