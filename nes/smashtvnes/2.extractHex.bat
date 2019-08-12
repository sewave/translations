@echo off
set T_FILENAME="TR_Smash T.V. (U) [!].nes"
set SCRIPTNAME="smashtvnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21330:80,32720:100,20F10:80,24C10:30,26E90:50,26850:80,26DE0:80
pause
