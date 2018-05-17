@echo off
set T_FILENAME="TR_Megaman - The Wily Wars (E).bin"
set SCRIPTNAME="megamanthewilywarssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 198140-19827F,198460:20,71AE2:60,71EC2:60,1B7940:A0,1B7AA0:A0,1B5F70:800
pause
