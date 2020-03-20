apiVersion: v1
kind: Pod
metadata:
  name: jt
spec:
  containers:
  - name: jt
    image: svikki96/vignesh:jenkins-docker
    volumeMounts:
    - mountPath: /var/run/docker.sock
      name: docker-socket-volume
    securityContext:
      privileged: true
  volumes:
  - name: docker-socket-volume
    hostPath:
      path: /var/run/docker.sock
      type: File