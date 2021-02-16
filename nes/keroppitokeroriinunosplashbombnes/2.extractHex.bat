@echo off
set T_FILENAME="TR_Keroppi to Keroriinu no Splash Bomb! (Japan) [T+ENG].nes"
set SCRIPTNAME="keroppitokeroriinunosplashbombnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 278E0:20,279E0:20,248B0:40,249B0:40,258B0:40,259B0:40,24F10:100,25F10:100,23770:10,23C00:10,23E00:10
pause
