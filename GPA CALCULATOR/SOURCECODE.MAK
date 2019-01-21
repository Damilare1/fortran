# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=SOURCECODE - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to SOURCECODE - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "SOURCECODE - Win32 Release" && "$(CFG)" !=\
 "SOURCECODE - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "SOURCECODE.MAK" CFG="SOURCECODE - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "SOURCECODE - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "SOURCECODE - Win32 Debug" (based on\
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
F90=fl32.exe
RSC=rc.exe

!IF  "$(CFG)" == "SOURCECODE - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\SOURCECODE.exe"

CLEAN : 
	-@erase ".\SOURCECODE.exe"
	-@erase ".\SOURCECODE.OBJ"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/SOURCECODE.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/SOURCECODE.pdb" /machine:I386 /out:"$(OUTDIR)/SOURCECODE.exe" 
LINK32_OBJS= \
	"$(INTDIR)/SOURCECODE.OBJ"

"$(OUTDIR)\SOURCECODE.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "SOURCECODE - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\SOURCECODE.exe"

CLEAN : 
	-@erase ".\SOURCECODE.exe"
	-@erase ".\SOURCECODE.OBJ"
	-@erase ".\SOURCECODE.ilk"
	-@erase ".\SOURCECODE.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"SOURCECODE.pdb" 
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/SOURCECODE.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/SOURCECODE.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/SOURCECODE.exe" 
LINK32_OBJS= \
	"$(INTDIR)/SOURCECODE.OBJ"

"$(OUTDIR)\SOURCECODE.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "SOURCECODE - Win32 Release"
# Name "SOURCECODE - Win32 Debug"

!IF  "$(CFG)" == "SOURCECODE - Win32 Release"

!ELSEIF  "$(CFG)" == "SOURCECODE - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\SOURCECODE.F90

"$(INTDIR)\SOURCECODE.OBJ" : $(SOURCE) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
