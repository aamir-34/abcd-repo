apiVersion: apps/v1
kind: Deployment
metadata:
  name: github-actions-gke
spec:
  replicas: 1
  selector:
    matchLabels:
      app: github-actions-gke
  template:
    metadata:
      labels:
        app: github-actions-gke
    spec:
      containers:
        - name: app
          image: gcr.io/PROJECT_ID/IMAGE:TAG .
          imagePullPolicy: Always
