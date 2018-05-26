@echo off
set T_FILENAME="TR_Boy and His Blob, A - Trouble on Blobolonia (U) [!].nes"
set S_FILENAME="Boy and His Blob, A - Trouble on Blobolonia (U) [!].nes"
set SCRIPTNAME="boyandhisblobatroubleonblobolonianes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
