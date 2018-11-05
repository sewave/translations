@echo off
set T_FILENAME="TR_Tom and Jerry - The Movie (U) [!].gg"
set SCRIPTNAME="tomandjerrythemoviegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21200:20,2BC20:20,24140:40,245C0:20
pause
