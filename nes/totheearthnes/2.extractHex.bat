@echo off
set T_FILENAME="TR_To The Earth (U) [!].nes"
set SCRIPTNAME="totheearthnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DD30:100,DE50:20,DF90:80,9B10:80,9490:50,9810:50,A910:100,AB10:100,FD10:300
pause
