FROM ubi8
RUN dnf -y install python3
WORKDIR /
ADD ./src/hello.py .
EXPOSE 8080
USER 1001
CMD python3 /hello.py
