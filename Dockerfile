FROM debian
COPY lab1.sh .
RUN chmod ugo+x lab1.sh
RUN mkdir /home/anna
CMD ./lab1.sh
