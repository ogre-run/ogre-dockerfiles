# Building the Ogre containers for storing in a container registry

Ogre provides already-built containers that can be used as baseimages. The intention
is to provide the user with an easy way to select baseimages. For example, instead of
wondering which version of Ubuntu would suit best their application, the user can just
select among the few Ogre's baseimages.

Currently, the three below are provided:

- ogarantia/ogre:baseimage-mini (based on Linux alpine:3.15.4) -- ~550MB in size
- ogarantia/ogre:baseimage-standard (based on ubuntu:22.04) -- ~1.2GB in size
- ogarantia/ogre:baseimage-standard-gpu (based on nvidia/cuda:11.7.0-devel-ubuntu22.04) -- ~5.4GB
in size


To use them, set the `baseimage` value in the ogre.yml file equal to one of them. For
example:

```yaml
baseline: ogarantia/ogre:standard-mini
```

If the application needs Nvidia GPU, the only image available is
`ogarantia/ogre:baseimage-standard-gpu`.

Those images are stored in the Ograntia's GitHub Container Repository. If you need to
rebuild them, this folder provides a convenient script `build_containers.sh`, which
will builds all container images at once.
