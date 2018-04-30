@echo off
set T_FILENAME="TR_Megaman - Dr. Wily's Revenge (U) [!].gb"
set SCRIPTNAME="megamandrwilysrevengegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 18907:400,32E11:400,3AC41:400,10F39:20
pause
