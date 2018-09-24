@echo off
set T_FILENAME="TR_Sega Galaga (SG-1000) [!].sg"
set S_FILENAME="Sega Galaga (SG-1000) [!].sg"
set SCRIPTNAME="segagalagasg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
