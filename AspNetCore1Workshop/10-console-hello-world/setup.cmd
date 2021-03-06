@echo off
REM *** Prerequisite: 
REM https://www.microsoft.com/net/core#windows

REM *** For more details see 
REM https://docs.microsoft.com/en-us/dotnet/articles/core/tools/dotnet

REM Generate a console app called "helloWorld"
mkdir helloworld
cd helloWorld
dotnet new console -lang C# -f netcoreapp1.1

REM Generate a library called "superutils"
REM Goal: Compare project.json from console app and library
cd ..
mkdir superutils
cd superutils
dotnet new classlib -f netcoreapp1.1
cd ..

REM Have fun with dotnet CLI
cd helloworld

REM Restore dependencies
dotnet restore
REM Look at what has changed in C:\Users\<user>\.nuget\packages

REM Build app
dotnet build

REM Run app
dotnet run
dotnet bin\Debug\netcoreapp1.1\helloworld.dll

REM Publish app (look at what happens in the file system)
dotnet publish
REM Run the app from the published directory
