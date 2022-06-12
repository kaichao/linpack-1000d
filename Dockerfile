FROM gcc:11-bullseye

COPY . /src/

WORKDIR /src/

RUN gfortran -static -lgfortran -static-libgfortran -static-libgcc -o linpack-1000d 1000d.f
