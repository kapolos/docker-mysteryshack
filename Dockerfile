 FROM jimmycuadra/rust
 
 RUN apt-get update
 RUN apt-get install -y curl
 
 RUN mkdir /data
 ADD install.sh /root/
 RUN chmod +x /root/install.sh
 RUN /root/install.sh
 ADD config /opt/mysteryshack/target/release/
 
 VOLUME ["/data"]
 EXPOSE 6767
