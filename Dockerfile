FROM ubuntu:latest

RUN bash -c 'apt update && apt -y install software-properties-common'
RUN bash -c 'add-apt-repository -y ppa:deadsnakes/ppa'
RUN bash -c 'apt -y install python3.11 python3.11-dev python3.11-venv git openjdk-17-jre-headless build-essential nano expect curl'

COPY redbot_pre_setup.sh /redbot_pre_setup.sh
COPY redbot_setup.sh /redbot_setup.sh
COPY redbot_run.sh /redbot_run.sh

RUN chmod +x /redbot_pre_setup.sh && /redbot_pre_setup.sh
RUN chmod +x /redbot_setup.sh && /redbot_setup.sh
RUN chmod +x /redbot_run.sh

CMD ["/bin/bash", "-c", "/redbot_run.sh"]