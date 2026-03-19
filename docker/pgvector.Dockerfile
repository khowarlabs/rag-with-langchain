FROM postgres:17 

#install build tools and dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    postgresql-server-dev-17 \
    git \
    cmake


#build pgvector extension and install 
RUN git clone --branch v0.7.4 https://github.com/pgvector/pgvector.git \
    && cd pgvector \
    && make \
    && make install