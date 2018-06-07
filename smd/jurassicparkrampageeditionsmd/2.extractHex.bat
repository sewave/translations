@echo off
set T_FILENAME="TR_Jurassic Park - Rampage Edition (UE) [!].bin"
set SCRIPTNAME="jurassicparkrampageeditionsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4A66E:60,4A6E2:60,4A810:40,8A864:60,4A8D8:80,4A96C:160,4AAEC:C0,5159A:100,516B4:100,517CE:100,51A02:100,51B1C:100,51D12:400,518E8:100
pause
