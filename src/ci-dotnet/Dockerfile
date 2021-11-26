FROM mcr.microsoft.com/dotnet/sdk:6.0-focal

RUN apt-get update && apt-get install -y \
    curl \
    awscli
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
