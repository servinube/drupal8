# Drupal 8 project for Docker

How to start your Drupal 8 project in minutes with Docker:

- Clone this repository in a new directory: `git clone git@github.com:servinube/drupal8.git yourproject.com`
- CD into the new created directory and run: `./install` (ahora uso mi composer de la raíz, cambiarlo)
- Answer all the questions to setup the site.
- Browse to http://localhost to see your new site.

También falta el parámetro de install, ver si puedo usarlo para cambiar localhost por el nombre del proyecto
Esto, falta el proxy corriendo :)
También el yml de distribución, que tiene xxx como nombre del proyecto, además que haría falta el usuario de Docker Hub
de la persona que instala.

## What to do next

Now, to be able to have more that one site runnning in your machine you need to setup a new domain.
If you are using Chrome you are lucky because you can use yourprojec.dev without to modify your `hosts` file.
You only need to edit docker-compose.yml and change localhost in environment section to yourprojec.dev.

After save the changes you can run `docker-compose up -d drupal` and browse to http://yourprojec.dev to see your site.

## Copying to production

Adapt the file dist.yml to your Docker Hub account. Run `./build` to create the Docker image from your source code.

You need to upload the folowing files to your server:

- dist.yml
- dist/update
- ¿La carpeta data? o será mejor instalar desde cero e importar la configuración exportada previamente
- `drush sql-dump --result-file=../private/initialdump.sql`

Then SSH to your server and run `./update`.
`drush sqlq --file=../private/initialdump.sql`
