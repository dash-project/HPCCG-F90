# =======================================================================================
#
#      Filename:  include_IFORT_Supermuc.mk
#      Description:  MPI build configuration for Intel icc 17 toolchain on LRZ Supermuc
#
# =======================================================================================

FC  = ifort
MPIFC  = mpif90 
CC  = icc
AR  = ar

OMPFLAGS = -openmp
OPT =  -O3 -no-prec-div -fno-alias
DEBUGFLAGS =  #-g
ARCHFLAGS = -xhost
FCFLAGS   =  $(OPT) $(DEBUGFLAGS) -module ./$(COMPILER)
MPIFLAGS   = -mt_mpi -fpp -coarray=distributed -switch no_launch 
CFLAGS   =  -O2 -std=c99
ASFLAGS  = -gdwarf-2
CPPFLAGS =
DEFINES  = -D_GNU_SOURCE
INCLUDES =
LIBS     =

