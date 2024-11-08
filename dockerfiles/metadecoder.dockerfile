FROM mambaorg/micromamba:1-noble

# mambaorg/micromamba defaults to a non-root user. Add a "USER root" to install packages as root:
USER root

#Install ubuntu packages
RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
     apt-get install -y --no-install-recommends \
     build-essential \
     git \
     curl \
     ca-certificates \     
     wget \
     pkg-config && \
     # Remove the effect of `apt-get update`
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV PATH="/opt/conda/bin/:$PATH" 

#Create workdir
WORKDIR /app

# Create the environment:
RUN micromamba install --yes --name base conda-forge::numpy=1.26.4 bioconda::samtools=1.20 
RUN micromamba clean --all --yes

# Activate the environment, 
ARG MAMBA_DOCKERFILE_ACTIVATE=1

RUN pip3 install --upgrade setuptools wheel
RUN pip3 install -U https://github.com/liu-congcong/MetaDecoder/releases/download/v1.0.18/metadecoder-1.0.18-py3-none-any.whl

ENV PATH="/opt/conda/bin/:$PATH"
