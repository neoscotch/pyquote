# pyquote

simple python/flask app for printing random quotes to a webpage. Used to test containerization in OpenShift

## podman

To build and run this Flask app using Podman:

1. Build the container image and tag it as "pyquote":
    ```podman build -t pyquote .```

2. Run the container and name the container "pyquote":
```podman run -d -p 5000:5000 --name pyquote pyquote```

This will start the app in detached mode and map port 5000 from the container to the host.
You can then access the app at <http://localhost:5000>
