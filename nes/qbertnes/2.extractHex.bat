@echo off
set T_FILENAME="TR_Q-bert (USA).nes"
set SCRIPTNAME="qbertnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8F10:80,AF10:B0,CF10:80,CE10:100,81F0:120,A1F0:120,A610:10,8610:10,8CC0:40,ACC0:40,AE30:10,E490:100
pause
