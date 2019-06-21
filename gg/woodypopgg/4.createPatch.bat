@echo off
set T_FILENAME="TR_Woody Pop (U) (V1.1) [!].gg"
set S_FILENAME="Woody Pop (U) (V1.1) [!].gg"
set SCRIPTNAME="woodypopgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
