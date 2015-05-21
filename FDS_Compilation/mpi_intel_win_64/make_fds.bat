@echo off
:: setup compiler environment
call ..\..\Utilities\Scripts\setup_intel_compilers.bat
set KWDIR=..\..\Utilities\keyword
set SDIR=..\..\FDS_Source

Title Building FDS (mpi) for 64 bit Windows

call %KWDIR%\expand_file %SDIR% %SDIR%\main.f90
make VPATH="../../FDS_Source" -f ..\makefile mpi_intel_win_64
call %KWDIR%\contract_file %SDIR%\main.f90
pause
