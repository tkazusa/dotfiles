# FROM gpu-nas01.maas:5000/tensorflow/tensorflow:latest-gpu-py3
FROM gpu-nas01.maas:5000/latest-gpy-py3
MAINTAINER Taketoshi Kazusa

#  install jupyter dependencies
RUN apt-get update && apt-get install -y \
    cmake \
    freeglut3-dev \
    ffmpeg \
    git \
    graphviz \
    language-pack-ja \
    libgtk2.0-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    nscd \
    python3-numpy \
    python-tk \
    python3-pip \
    protobuf-compiler \
    python-pil \
    python-lxml \
    tmux \
    unzip \
    vim \
    xvfb \
    wget \
    && apt-get -y clean all \
    && rm -rf /var/lib/apt/lists/*

# locale setting
ENV LANG ja_JP.UTF-8
RUN update-locale LANG=$LANG

# pip kaggle package
RUN pip3 install kaggle
RUN pip3 install --upgrade pip

# install keras
RUN pip3 install keras==2.2.2
ENV KERAS_BACKEND=tensorflow


# install other packages
RUN pip3 install jupyter
RUN pip3 install https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master \
     && jupyter contrib nbextension install --user \
     && jupyter nbextension enable collapsible_headings/main

RUN pip3 install matplotlib scipy scikit-learn scikit-image seaborn h5py pydot-ng click pycuda pillow lxml pulp flake8 Flask category_encoders lightgbm Cython tqdm 

RUN pip3 install git+https://github.com/aleju/imgaug
RUN pip3 install git+https://github.com/hyperopt/hyperopt.git


# WORKDIR /root
# clone dotfiles
#RUN git clone https://github.com/tkazusa/dotfiles.git \
#    && bash dotfiles/install.sh


# install opencv3
ENV PYTHON_INCLUDE_DIRS /usr/include/python3.5
ENV PYTHON_LIBRARIES /usr/lib/x86_64-linux-gnu/libpython3.5m.so
RUN wget https://github.com/Itseez/opencv/archive/3.2.0.zip \
    && wget https://github.com/Itseez/opencv_contrib/archive/3.2.0.zip \
    && unzip 3.2.0.zip \
    && unzip 3.2.0.zip.1
RUN cd opencv-3.2.0 \
    && mkdir build \
    && cd build \
    && cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=/root/opencv_contrib-3.2.0/modules \
    -D BUILD_opencv_java=OFF \
    -D BUILD_opencv_python2=OFF \
    -D BUILD_opencv_python3=ON \
    -D WITH_TBB=OFF \
    -D WITH_QT=OFF \
    -D WITH_1394=OFF \
    -D WITH_CUDA=OFF .. \
    && make -j8 \
    && make install \
    && ldconfig \
    && ln /dev/null /dev/raw1394 \
    && rm /root/3.2.0.zip /root/3.2.0.zip.1 \
    && rm -r /root/opencv-3.2.0 /root/opencv_contrib-3.2.0

# gcloud command
RUN export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update -y && apt-get install google-cloud-sdk -y

# for Keras.js
# EXPOSE 3000

# for Tensorboard
EXPOSE 6006

# for jupyterlab
EXPOSE 8888

# for mlflow
EXPOSE 5000

COPY dotfiles /root/dotfiles/
# CMD ["/usr/sbin/sshd", "-D"]
CMD ["/bin/bash"]

