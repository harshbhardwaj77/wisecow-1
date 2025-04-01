# 🐮 Wisecow - A Fun & Secure Kubernetes App

**Wisecow** is a simple terminal-based app that outputs random fortunes with cowsay-style ASCII art. I built and deployed this app as part of my DevOps/Cloud learning journey, focusing on containerization, Kubernetes deployment, CI/CD automation, and secure communication via TLS.

---

## ✨ What I Have Done

### ✅ 1. Developed the Application Script
- Created `wisecow.sh` to combine `fortune` and `cowsay` output
- Set up a basic TCP listener using `netcat` on port `4499`
- Ensured the script is lightweight and runs in any Linux container

### ✅ 2. Containerized the Application
- Wrote a custom `Dockerfile` using `python:3.9-slim` as the base
- Installed required packages: `cowsay`, `fortune-mod`, `netcat-openbsd`
- Configured executable permissions and exposed the correct port

### ✅ 3. Deployed to Kubernetes (kind)
- Created `deployment.yaml` and `service.yaml` to deploy the app on a local `kind` cluster
- Exposed the app using a `NodePort` service for testing from the host machine

### ✅ 4. Implemented TLS (HTTPS)
- Generated a self-signed TLS certificate
- Created a Kubernetes TLS secret from the cert/key
- Set up an `Ingress` resource using NGINX Ingress Controller
- Mapped `wisecow.local` to `localhost` via `/etc/hosts`
- Verified secure access over `https://wisecow.local`

### ✅ 5. Automated CI/CD with GitHub Actions
- Built a complete GitHub Actions workflow:
  - **Builds and pushes** Docker image to Docker Hub
  - **Deploys to kind** via a self-hosted GitHub Actions runner
  - Applies Kubernetes manifests and restarts the deployment on updates
  - Logs deployment status and outputs pod information

### ✅ 6. Verified Functionality
- Used `curl` and port forwarding to test internal and external access
- Debugged pod failures (CrashLoopBackOff, InvalidImageName) and resolved issues
- Logged output and used monitoring techniques to verify system behavior

---

## 📁 Project Structure

