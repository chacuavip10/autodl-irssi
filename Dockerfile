FROM irssi
MAINTAINER zmiguel

USER root
RUN apt-get update
RUN apt-get install -y build-essential curl cpanminus

# Net::SSLeay dependency
RUN apt-get install -y libssl-dev
# XML::LibXML dependency
RUN apt-get install -y libxml2-dev

RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm Archive::Zip Net::SSLeay HTML::Entities XML::LibXML Digest::SHA JSON JSON::XS

USER user

ADD install.sh /home/user/install.sh
ADD autodl-irssi /home/user/autodl-irssi/

VOLUME /home/user/watch

CMD ["/home/user/install.sh"]