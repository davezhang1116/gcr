FROM ubuntu:latest    

WORKDIR /root/text
COPY ./us_inaugural_speeches ./
RUN bash -c 'apt-get update ;apt-get upgrade -y ;apt-get install python3 -y;apt-get install pip -y;apt-get install python3.10-venv -y ;python3 -m pip install pipx ; python3 -m pipx install semantra;'
CMD ["/root/.local/bin/semantra", "--transformer-model", "Muennighoff/SGPT-1.3B-weightedmean-msmarco-specb-bitfit", "/root/text/us_inaugural_speeches/*.txt"]
CMD ["/root/.local/bin/semantra", "--transformer-model", "Muennighoff/SGPT-1.3B-weightedmean-msmarco-specb-bitfit", "/root/text/*.txt"]
