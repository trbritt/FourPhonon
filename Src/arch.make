#export FFLAGS=-Ofast -I/home/trbritt/spglib-1.16.1/_build/include/ -I${MKLROOT}/include/intel64/ilp64 -i8  -I"${MKLROOT}/include"
#export LDFLAGS=-L/home/trbritt/spglib-1.16.1/_build/lib64 -lsymspg
#export MPIFC=mpiifort -check bounds -g -traceback

#export LAPACK=   ${MKLROOT}/lib/intel64/libmkl_lapack95_ilp64.a \
#-Wl,--start-group ${MKLROOT}/lib/intel64/libmkl_intel_ilp64.a ${MKLROOT}/lib/intel64/libmkl_intel_thread.a \
#${MKLROOT}/lib/intel64/libmkl_core.a -Wl,--end-group -liomp5 -lpthread -lm -ldl
#export LIBS=$(LAPACK)

export FFLAGS=-O3 -march=skylake-avx512 -D_POSIX_C_SOURCE=200809L -fopenmp -lm -fbounds-check -fdec -fallow-argument-mismatch -I/home/trbritt/spglib-1.16.1/_build/include/ 
export MPIFC=mpif90 #fdec needed for carriage control
export LDFLAGS=-L/home/trbritt/spglib-1.16.1/_build/lib64 -lsymspg
export LAPACK=-lflexiblas
export LIBS=$(LAPACK)
