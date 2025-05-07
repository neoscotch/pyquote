# pyquote

simple python/flask app for printing random quotes to a webpage. Used to test containerization in OpenShift

## podman

```bash
podman build -t flask-quotes .
podman run -d -p 5000:5000 --name flask-quotes-app flask-quotes
```
