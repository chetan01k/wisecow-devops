# 🐄 Wisecow DevOps Project (Kubernetes Deployment with TLS)

## 📌 Project Overview

This project demonstrates the containerization and deployment of the **Wisecow application** on Kubernetes using Minikube. It includes Dockerization, Kubernetes manifests, TLS configuration, and CI/CD automation using GitHub Actions.

The goal of this project is to simulate a real-world DevOps workflow involving containerization, orchestration, automation, and security.

---

## 🛠️ Tech Stack

* Docker 🐳
* Kubernetes ☸️ (Minikube)
* GitHub Actions ⚙️
* Linux 🐧
* OpenSSL 🔐

---

## 📦 Dockerization

* Created a Dockerfile to containerize the Wisecow application
* Installed required dependencies: `fortune-mod`, `cowsay`
* Built Docker image locally
* Pushed image to Docker Hub for deployment

---

## ☸️ Kubernetes Deployment

* Created Kubernetes manifests:

  * Deployment
  * Service
  * Ingress
* Deployed Wisecow application on Minikube cluster
* Exposed application using Kubernetes Service
* Verified pod and service communication

---

## 🌐 Ingress & TLS Configuration

* Configured Ingress resource for domain-based routing
* Generated self-signed TLS certificates using OpenSSL
* Created Kubernetes TLS secret
* Enabled HTTPS access via `wisecow.local`

---

## ⚙️ CI/CD Pipeline

* Implemented GitHub Actions workflow
* Automated Docker image build and push on every commit
* Enabled continuous integration for the project

---

## 📂 Project Structure

wisecow/
│
├── Dockerfile
├── wisecow.sh
│
├── k8s/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── ingress.yaml
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── scripts/   (Problem Statement 2)
│
└── README.md

---

## 🚀 How to Run the Project

### 1️⃣ Start Minikube

```bash
minikube start
```

### 2️⃣ Enable Ingress Controller

```bash
minikube addons enable ingress
```

### 3️⃣ Apply Kubernetes Manifests

```bash
kubectl apply -f k8s/
```

### 4️⃣ Generate TLS Certificate

```bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout tls.key -out tls.crt \
-subj "/CN=wisecow.local/O=wisecow"
```

### 5️⃣ Create TLS Secret

```bash
kubectl create secret tls wisecow-tls \
--cert=tls.crt --key=tls.key
```

### 6️⃣ Start Minikube Tunnel

```bash
minikube tunnel
```

### 7️⃣ Update Hosts File

```bash
sudo nano /etc/hosts
```

Add:

```
<minikube-ip> wisecow.local
```

### 8️⃣ Access Application

```
https://wisecow.local
```

👉 Accept browser SSL warning (self-signed certificate)

---

## 📸 Screenshots

* Kubernetes Pods Running
* Services and Ingress
* Application Output in Browser

(Add screenshots here for submission)

---

## 🎯 Outcome

* Successfully containerized Wisecow application
* Deployed application on Kubernetes cluster
* Configured secure TLS communication
* Implemented CI/CD pipeline using GitHub Actions
* Achieved end-to-end DevOps workflow

---

## 🧠 Learning Outcomes

* Hands-on experience with Docker and Kubernetes
* Understanding of Ingress and TLS in Kubernetes
* CI/CD pipeline implementation
* Real-world DevOps deployment practices

---

## 👨‍💻 Author

**Chetan Sonawane**

