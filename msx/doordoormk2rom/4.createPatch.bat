@echo off
set T_FILENAME="TR_Doordoor Mk2 (1984) (Enix) (J).rom"
set S_FILENAME="Doordoor Mk2 (1984) (Enix) (J).rom"
set SCRIPTNAME="doordoormk2rom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
