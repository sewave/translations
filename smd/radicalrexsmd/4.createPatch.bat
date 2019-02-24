@echo off
set T_FILENAME="TR_Radical Rex (U) [!].bin"
set S_FILENAME="Radical Rex (U) [!].bin"
set SCRIPTNAME="radicalrexsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
