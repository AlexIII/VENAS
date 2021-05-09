default : libparham.so


MPI_INCLUDE_PATH = /opt/amazon/openmpi/include
MPI_LIB_PATH = /opt/amazon/openmpi/lib64/

lib%.so : %.cc
	g++ -std=c++17 -g -O3 -fopenmp $< -shared -fPIC -o $@ -L$(MPI_LIB_PATH) -lmpi -I$(MPI_INCLUDE_PATH)
