export FFLAGS=-Ofast -I /usr/local/include  -I${MKLROOT}/include/intel64/ilp64 -i8  -I"${MKLROOT}/include"
export LDFLAGS=-L/usr/local/lib -lsymspg
export MPIFC=mpiifort -check bounds -g -traceback

export LAPACK=   ${MKLROOT}/lib/intel64/libmkl_lapack95_ilp64.a \
-Wl,--start-group ${MKLROOT}/lib/intel64/libmkl_intel_ilp64.a ${MKLROOT}/lib/intel64/libmkl_intel_thread.a \
${MKLROOT}/lib/intel64/libmkl_core.a -Wl,--end-group -liomp5 -lpthread -lm -ldl
export LIBS=$(LAPACK)
