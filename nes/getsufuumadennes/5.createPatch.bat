@echo off
set T_FILENAME="TR_Getsufuu Maden (J) [T+ENG_nebulus].nes"
set S_FILENAME="Getsufuu Maden (J) [!].nes"
set SCRIPTNAME="getsufuumadennes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
