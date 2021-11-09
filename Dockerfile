FROM julia:1.6.1
COPY . /
RUN ["julia", "--project", "install.jl"]
ENTRYPOINT ["/bin/bash", "./start.sh"]