@echo off
set T_FILENAME="TR_Legend of Prince Valiant, The (Europe).nes"
set SCRIPTNAME="legendofprincevaliantthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20040:60,20280:30,20300:10,203C0:10,20400:10,205D0:10,25C50:200,232E0:10,242E0:10,279C0:10,289C0:10,2B9C0:10,2E9C0:10,349C0:10,359C0:10,369C0:10,379C0:10,399C0:10,3A9C0:10,3B9C0:10,3C9C0:10,3E9C0:10,
pause
