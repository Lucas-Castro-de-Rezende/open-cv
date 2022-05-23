FROM continuumio/anaconda3
WORKDIR /home/open-cv
RUN conda install jupyter -y --quiet && mkdir /home/open-cv -p && pip install opencv-python
RUN pip install opencv-python
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
EXPOSE 8888

