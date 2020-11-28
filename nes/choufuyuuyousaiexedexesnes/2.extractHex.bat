@echo off
set T_FILENAME="TR_Chou Fuyuu Yousai Exed Exes (Japan).nes"
set SCRIPTNAME="choufuyuuyousaiexedexesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9100:10,9170:30,8120:10,8150:10,81A0:10,81D0:10,8AD0:80,80F0:10
pause
