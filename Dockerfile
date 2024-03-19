FROM cm2network/steamcmd

ENV ZOMBOID_APP_ID=380870

COPY files /files

RUN echo "Running download script"
RUN /home/steam/steamcmd/steamcmd.sh +runscript /files/steamcmd_download_server

EXPOSE 16261-16272/udp

