@echo off
set T_FILENAME="TR_Abadox - The Deadly Inner War (U) [!].nes"
set SCRIPTNAME="abadoxthedeadlyinnerwarnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 390F0:10,3A0F0:10,3B0F0:10,3C0F0:10,3D0F0:10,3E0F0:10,3F0F0:10,36280:20
pause
