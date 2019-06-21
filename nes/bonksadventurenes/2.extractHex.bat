@echo off
set T_FILENAME="TR_Bonk's Adventure (U) [!].nes"
set SCRIPTNAME="bonksadventurenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 48B10:80,5E610:10,58F90:60,40D00:10,40E00:10,40F00:10,41000:10,57810:80,57B00:10,4A380:50,57B80:10
pause
