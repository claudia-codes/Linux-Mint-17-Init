# HashKill
cd ~/apps/
git clone https://github.com/gat3way/hashkill.git
cd hashkill
./rebuild.sh
./configure
optirun make
sudo make install

# John The Ripper
cd ~/apps/
git clone https://github.com/magnumripper/JohnTheRipper.git
cd ./JohnTheRipper/src/
# multicore support
    sed -ie "s/#OMPFLAGS = -fopenmp -msse2$/OMPFLAGS = -fopenmp -msse2/" Makefile.legacy
    # sed -ie "s/#ICCOMPFLAGS = -openmp$/ICCOMPFLAGS = -openmp/" Makefile.legacy
    # sed -ie "s/#CC = mpicc -DHAVE_MP$/CC = mpicc -DHAVE_MP/" Makefile.legacy
./configure
# optirun make -f Makefile.legacy linux-x86-64-gpu
make -f Makefile.legacy clean linux-x86-64-native
cd ../run/
chmod +x john

