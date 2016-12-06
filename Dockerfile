FROM servinube/drupal
MAINTAINER Juan M. Sosso <juan@servinube.net>

COPY dist/ssmtp.conf /etc/ssmtp
COPY app /var/www
COPY dist/default.* dist/settings.php dist/services.yml /var/www/web/sites/default/
