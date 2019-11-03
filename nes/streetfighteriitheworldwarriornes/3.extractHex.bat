@echo off
set T_FILENAME="TR_Street Fighter II - The World Warrior (Unl) [!].nes"
set SCRIPTNAME="streetfighteriitheworldwarriornes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 35DB0:100
pause
