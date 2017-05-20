@ECHO OFF
cd %GTS_HOME%
C:\WINDOWS\system32\cmd.exe /C ant.bat -buildfile %GTS_HOME%\build.xml all
C:\WINDOWS\system32\cmd.exe /C %GTS_HOME%\bin\initdb.bat -rootUser:root -rootPass:7OpenGTS7MySQL7
C:\WINDOWS\system32\cmd.exe /C %GTS_HOME%\bin\admin.bat Account -account:demo -nopass -create
C:\WINDOWS\system32\cmd.exe /C %GTS_HOME%\bin\admin.bat Device -account:demo -device:demo -create
C:\WINDOWS\system32\cmd.exe /C %GTS_HOME%\bin\admin.bat Device -account:demo -device:demo2 -create
C:\WINDOWS\system32\cmd.exe /C %GTS_HOME%\bin\dbConfig.bat -load:EventData -dir:./sampleData
C:\WINDOWS\system32\cmd.exe /C ant.bat -buildfile %GTS_HOME%\build.xml track.deploy
EXIT
