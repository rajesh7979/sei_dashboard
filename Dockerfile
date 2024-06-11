FROM registry.access.redhat.com/ubi9/ubi:latest
 
# Make sure to maintain alphabetical ordering when adding new packages.
RUN INSTALL_PKGS="\
    jq \
    " && \
    yum -y install --setopt=tsflags=nodocs --setopt=skip_missing_names_on_install=False $INSTALL_PKGS && \
    yum clean all && rm -rf /var/cache/*
    yum install -y git
