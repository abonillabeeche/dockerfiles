FROM opensuse:42.3
MAINTAINER Alejandro Bonilla "abonilla@suse.com" 
ENV REFRESHED_AT 2017-11-08

RUN zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys install https://s3-us-west-1.amazonaws.com/cf-cli-releases/releases/v6.32.0/cf-cli-installer_6.32.0_x86-64.rpm

RUN zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys install https://download.opensuse.org/repositories/devel:/CaaSP:/2.0:/ControllerNode/openSUSE_Leap_42.3/x86_64/kubernetes-common-1.7.7-1.5.x86_64.rpm

RUN zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys install https://download.opensuse.org/repositories/devel:/CaaSP:/2.0:/ControllerNode/openSUSE_Leap_42.3/x86_64/kubernetes-client-1.7.7-1.5.x86_64.rpm

RUN zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys install https://download.opensuse.org/repositories/devel:/CaaSP:/2.0:/ControllerNode/openSUSE_Leap_42.3/x86_64/helm-2.6.1-1.2.x86_64.rpm

RUN zypper --non-interactive --no-gpg-checks --gpg-auto-import-keys install git vim wget mariadb-client curl jq nmap gnu-netcat ruby2.1-rubygem-eventmachine ruby2.1-rubygem-http_parser.rb unzip

RUN gem install cf-uaac -v 3.4.0

RUN wget https://github.com/aarondl/kctl/releases/download/v0.0.12/kctl-linux-amd64 -O /sbin/k

RUN chmod +x /sbin/k

ENTRYPOINT ["/bin/bash"]
