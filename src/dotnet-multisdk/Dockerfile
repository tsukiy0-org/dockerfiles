FROM mcr.microsoft.com/dotnet/sdk:5.0-focal

# https://docs.microsoft.com/en-us/dotnet/core/install/linux-ubuntu
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O /tmp/packages-microsoft.deb && \
    dpkg -i /tmp/packages-microsoft.deb && \
    rm -rf /tmp/package-microsoft.deb

RUN apt-get update && apt-get install -y \
    dotnet-sdk-2.1 \
    dotnet-sdk-3.1 
