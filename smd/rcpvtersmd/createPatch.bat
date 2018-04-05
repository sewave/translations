@echo off 
set T_FILENAME="TL_Robocop Versus The Terminator (U) [!].bin"
set S_FILENAME="Robocop Versus The Terminator (U) [!].bin"
set SCRIPTNAME="rcpvtersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
