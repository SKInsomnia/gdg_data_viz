FROM jupyter/base-notebook:notebook-6.0.0

RUN pip install numpy pandas seaborn jupyter-offlinenotebook

# ./work is found inside official jupyter images, we avoid unnecessary nesting
RUN rm -rf ./work

RUN mkdir data
COPY --chown=1000:100 data/AB_NYC_2019.csv data
COPY --chown=1000:100 data/googleplaystore.csv data
COPY --chown=1000:100 ./Livecode.ipynb .
COPY --chown=1000:100 ./Challenge.ipynb .
COPY --chown=1000:100 ./Lecture.ipynb .
