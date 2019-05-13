@echo off
set T_FILENAME="TR_Adventures of Dino Riki, The (U) [!].nes"
set SCRIPTNAME="adventuresofdinorikithenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9940:20,9C20:10,9580:20,91C0:20
pause
