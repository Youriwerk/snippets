#! /usr/bin/bash

# Create a new directory for this example and enter it
mkdir hello && cd hello

# And add a nice homepage
echo "<h1>Lando says hellooo what have we here?</h1>" > index.html

# Initialize a basic LAMP stack using the cwd as the source
lando init \
  --source cwd \
  --recipe lamp \
  --webroot . \
  --name hello-lando

# Check out the Landofile it created for you
cat .lando.yml

# Start it up
lando start

# Check out the commands you can run
lando

# Visit the local site
open https://hello-lando.lndo.site

# Destroy the site
lando destroy -y
