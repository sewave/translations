@echo off
set T_FILENAME="TR_Hatris (USA).nes"
set SCRIPTNAME="hatrisnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 47B5:100,4E95:20,4F65:80,5065:80,51E5:200,68ED:50,5755:10,58C5:10,5925:20,1698E:70,16A3E:70,16D6E:70,16F0E:40,16FDE:40,4A85:30
pause
