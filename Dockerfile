FROM tensorflow/tensorflow:latest-gpu
MAINTAINER wxqy

RUN python -m pip install jupyterthemes
RUN jt -t chesterish

RUN python -m pip install torch torchvision
RUN python -m pip install mxnet-cu90
RUN python -m pip install grpcio --ignore-installed
RUN python -m pip install grpcio-tools googleapis-common-protos
RUN python -m pip install httpie

RUN http https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.0-linux-x86_64.tar.gz | tar xvfz -c /opt/
ENV PATH="/opt/julia-1.0.0/bin:${PATH}"
#RUN /opt/julia-1.0.0/bin/julia -e "ENV[\"jupyter\"]=\"$(which jupyter)\"; using Pkg; Pkg.add(\"IJulia\")"
