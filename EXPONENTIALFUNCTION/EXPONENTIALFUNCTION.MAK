# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=EXPONENTIALFUNCTION - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to EXPONENTIALFUNCTION - Win32\
 Debug.
!ENDIF 

!IF "$(CFG)" != "EXPONENTIALFUNCTION - Win32 Release" && "$(CFG)" !=\
 "EXPONENTIALFUNCTION - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "EXPONENTIALFUNCTION.MAK"\
 CFG="EXPONENTIALFUNCTION - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "EXPONENTIALFUNCTION - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "EXPONENTIALFUNCTION - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
RSC=rc.exe
F90=fl32.exe

!IF  "$(CFG)" == "EXPONENTIALFUNCTION - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\EXPONENTIALFUNCTION.exe"

CLEAN : 
	-@erase ".\EXPONENTIALFUNCTION.exe"
	-@erase ".\EXPONENTIALFUNCTION.OBJ"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/EXPONENTIALFUNCTION.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/EXPONENTIALFUNCTION.pdb" /machine:I386\
 /out:"$(OUTDIR)/EXPONENTIALFUNCTION.exe" 
LINK32_OBJS= \
	"$(INTDIR)/EXPONENTIALFUNCTION.OBJ"

"$(OUTDIR)\EXPONENTIALFUNCTION.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "EXPONENTIALFUNCTION - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\EXPONENTIALFUNCTION.exe"

CLEAN : 
	-@erase ".\EXPONENTIALFUNCTION.exe"
	-@erase ".\EXPONENTIALFUNCTION.OBJ"
	-@erase ".\EXPONENTIALFUNCTION.ilk"
	-@erase ".\EXPONENTIALFUNCTION.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"EXPONENTIALFUNCTION.pdb" 
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/EXPONENTIALFUNCTION.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/EXPONENTIALFUNCTION.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/EXPONENTIALFUNCTION.exe" 
LINK32_OBJS= \
	"$(INTDIR)/EXPONENTIALFUNCTION.OBJ"

"$(OUTDIR)\EXPONENTIALFUNCTION.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.for.obj:
   $(F90) $(F90_PROJ) $<  

.f.obj:
   $(F90) $(F90_PROJ) $<  

.f90.obj:
   $(F90) $(F90_PROJ) $<  

################################################################################
# Begin Target

# Name "EXPONENTIALFUNCTION - Win32 Release"
# Name "EXPONENTIALFUNCTION - Win32 Debug"

!IF  "$(CFG)" == "EXPONENTIALFUNCTION - Win32 Release"

!ELSEIF  "$(CFG)" == "EXPONENTIALFUNCTION - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\EXPONENTIALFUNCTION.F90

"$(INTDIR)\EXPONENTIALFUNCTION.OBJ" : $(SOURCE) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
