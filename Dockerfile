FROM python:3.7.4-slim-buster

RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    apt-transport-https \
    libssl1.1 \
    libicu63 \
    wget

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

RUN wget https://github.com/PowerShell/PowerShell/releases/download/v6.2.2/powershell_6.2.2-1.debian.9_amd64.deb
RUN dpkg -i powershell_6.2.2-1.debian.9_amd64.deb
#RUN echo "deb https://packages.microsoft.com/repos/microsoft-debian-buster-prod buster main" > /etc/apt/sources.list.d/microsoft.list

#RUN apt-get update && apt-get install -y powershell 