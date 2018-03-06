# CloudNativeCasts Website

This is the website for CloudNativeCasts: [https://cloudnativecasts.com](https://cloudnativecasts.com).

[Hugo](https://gohugo.io) is used to compile all static files, including the markdown files, into a static website.  
The only other dependencies are [flexboxgrid.com](http://flexboxgrid.com) and [fontawesome.com](https://fontawesome.com).  
Everything else is just plain old HTML and CSS.

### Deployment

After compiling the static website with hugo the contents of `public/` and a Caddyfile are copied into a container
which already contains [Caddy](https://caddyserver.com).
It then gets pushed as [cloudnativecasts/website](https://hub.docker.com/r/cloudnativecasts/website/) to Docker Hub.   
Once the image is available we can trigger an update to CloudNativeCasts' Kubernetes cluster.
Fortunately we can simply use [KubeCI](https://kubeci.io)'s kubectl plugin to apply these changes.

