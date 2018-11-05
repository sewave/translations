@echo off
set T_FILENAME="TR_Tom and Jerry - The Movie (U) [!].gg"
set S_FILENAME="Tom and Jerry - The Movie (U) [!].gg"
set SCRIPTNAME="tomandjerrythemoviegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
