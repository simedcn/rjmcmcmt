#!/bin/sh

#Script to load compiler modules and dependent software 
export srcdir='../src'
export cpputilssrc='../submodules/cpp-utils/src'

#GNU compiler on raijin.nci.org.au
#module load rjmcmcmt/gnu
#export cxx=g++
#export mpicxx=mpiCC
#export cxxflags='-std=c++11 -O3 -Wall -fdiagnostics-color=always'

#Intel compiler on raijin.nci.org.au
module load rjmcmcmt/intel
export cxx=icpc
export mpicxx=mpiCC
export cxxflags='-std=c++11 -O3 -Wall -diag-disable remark'

export exedir=$RJMCMCMT_BIN
mpiCC -showme
#make -f rjmcmmt.make $1
make -f generate_synthetic_data.make $1


