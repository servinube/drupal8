# Drupal 8 project for Docker

How to start your Drupal 8 project in minutes with Docker:

- Clone this repository in a new directory: `git clone git@github.com:servinube/drupal8.git yourproject.com`
- CD into the new created directory and run: `./install` (ahora uso mi composer de la raíz, cambiarlo)
- Answer all the questions to setup the site.
- Browse to http://localhost to see your new site.

También falta el parámetro de install, ver si puedo usarlo para cambiar localhost por el nombre del proyecto
Esto, falta el proxy corriendo :)

## What to do next

Now, to be able to have more that one site runnning in your machine you need to setup a new domain.
If you are using Chrome you are lucky because you can use yourprojec.dev without to modify your `hosts` file.
You only need to edit docker-compose.yml and change localhost in environment section to yourprojec.dev.

After save the changes you can run `docker-compose up -d drupal` and browse to http://yourprojec.dev to see your site.
