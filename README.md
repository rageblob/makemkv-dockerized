# Dockerized MakeMKV

The DVD/BD ripping tool [MakeMKV](https://makemkv.com/)
in dockerized form.
Access the app via web GUI at `localhost:9000`.

The default output location for disk rips is set to `$HOME/Downloads/makemkv`.
For each disk, MakeMKV will write the output files into a dedicated directory.

## Prerequisites

It is expected that the [docker](https://docs.docker.com/get-started/overview/)
and [docker-compose](https://docs.docker.com/compose/)
CLIs are installed and available.
Also the user should [be allowed to manage docker directly](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user).

Furthermore it is assumed that you are using only one single optical drive.

## How to use this app

Provided that your system fulfills the requirements listed above,
all you need to do to get started is run `make` and then visit
`localhost:9000` in your web browser of choice.
There you will be presented with a GUI just like the one of the
regular, standalone, installation of MakeMKV.

## Troubleshooting

### Optical drive access

In case the web GUI does not recognize your optical drive,
run `make logs` to find the correct drive to expose to the pod.
Adjust `docker-compose.yaml` accordingly, then run `make` again.

[Here](https://github.com/jlesage/docker-makemkv#access-to-optical-drives)
you can find more information about this topic.
