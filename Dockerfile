FROM tensorflow/tensorflow:latest-gpu
MAINTAINER wxqy
RUN pip install torch torchvision
RUN pip install mxnet-cu90
