# Bastion:Alpine

This is an alpine based version of bastion. I have found it to be a smaller footprint with more tooling than the ubuntu version. This will be the default version going forward.

## What it does

This is a docker container specifically designed to have an immutable set of cloud tools that you must log in to unlike most docker contaners. 

The goal is to have a sort of floating cloud tools environment that allows you to do operations and administration on any platform that can run a docker container (Windows/Linux/Mac) without having to modify your local environment.

## What it doesn't do

This does not do ANY personal configuration as that would be quite silly to publicly put in a docker container. Because of this, You will need to configure your environment in a few different ways.

1. Use this docker image to build another docker image with all your config inside. (meh)
2. Mount a volume with your config information to the /workspace directory so that you can take advantage of already created configs on your system (less meh?)
3. Configure the info in your container and expect it to be ephemeral. Meaning once the container dies, your configs go with it (probably most secure but sucks for reliability)
