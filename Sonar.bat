SonarScanner.MSBuild.exe begin /k:"BancoBari" /d:sonar.host.url="http://localhost:9000" /d:sonar.login="f8de9276e132392637468f85221a0bf33b7b0d31" /d:sonar.cs.opencover.reportsPaths="BancoBari.Tests\coverage.opencover.xml" 
dotnet restore
dotnet test BancoBari.Tests /p:CollectCoverage=true /p:CoverletOutputFormat=opencover
MsBuild.exe /t:Rebuild
SonarScanner.MSBuild.exe end /d:sonar.login="f8de9276e132392637468f85221a0bf33b7b0d31"

Pause

