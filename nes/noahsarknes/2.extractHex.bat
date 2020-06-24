@echo off
set T_FILENAME="TR_Noah's Ark (Europe).nes"
set SCRIPTNAME="noahsarknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20FA0:20,21000:10,261D0:10,2AF50:20,384C0:200,3ED90:280,26170:20,20C90:10,370C0:80
pause
