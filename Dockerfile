FROM fedora

# RUN is in compiling time.
RUN dnf install git -y \
  && git clone https://github.com/csyangzhou/SeafileClientBuildTools.git /SeafileClientBuildTools \
  && bash /SeafileClientBuildTools/InstallDevPackagesFedora.sh

# CMD is in runtime.
CMD ["/SeafileClientBuildTools/DockerEntry.sh"]
