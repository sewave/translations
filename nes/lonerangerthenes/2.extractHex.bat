@echo off
set T_FILENAME="TR_Lone Ranger, The (USA).nes"
set SCRIPTNAME="lonerangerthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 50990:10,50A00:10,5F820:10,5F920:10,5FF20:10,5FF50:10,5F8B0:50,5F9B0:50,5FAB0:50,5FBB0:50,5FEC0:10,51FD0:20
pause
