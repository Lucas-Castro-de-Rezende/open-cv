FROM continuumio/anaconda3
WORKDIR /home/open-cv
RUN conda install jupyter -y --quiet && mkdir /home/open-cv -p
RUN conda install -c conda-forge dlib -y
RUN pip install opencv-python
RUN pip install dlib && pip install cmake
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6 -y
RUN pip3 install face_recognition
EXPOSE 8888

