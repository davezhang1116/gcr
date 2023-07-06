FROM ubuntu:latest    

RUN bash -c 'apt-get update ;apt-get upgrade -y ;apt-get install python3 -y;apt-get install pip -y;apt-get install python3.10-venv -y ;apt-get install wget unzip -y ;python3 -m pip install pipx ; python3 -m pipx install semantra ; cd home; wget https://github.com/freedmand/semantra/raw/main/docs/example_docs/us_inaugural_speeches.zip; unzip *;'
CMD ["cd", "home", "&&", "/root/.local/bin/semantra", "--transformer-model", "Muennighoff/SGPT-1.3B-weightedmean-msmarco-specb-bitfit", "us_inaugural_speeches/*"]
