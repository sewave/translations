@echo off
set T_FILENAME="TR_Tiny Toon Adventures 2 - Trouble in Wackyland (USA).nes"
set SCRIPTNAME="tinytoonadventures2troubleinwackylandnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2FC10:80,39450:20,3F7D0:30,3F700:10,3F210:200,3E0F0:20,3E1F0:20,3E2F0:20,3E3F0:20,3D110:80,2EAA0:70,39ED0:40,39F90:30
pause
