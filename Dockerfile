FROM servinube/drupal
MAINTAINER Juan M. Sosso <juan@servinube.net>

COPY dist/ssmtp.conf /etc/ssmtp
COPY app /var/www
