# Secure PHP Web App CI/CD Pipeline

## Description
This repository contains a CI/CD pipeline for a **secure PHP web application** with **comprehensive vulnerability assessment**. The pipeline integrates **static analysis, dependency scanning, dynamic analysis, container security scanning, and secrets detection** to ensure application security before deployment.

### Key Features:

- **Dependency Scanning** (Composer Audit, OWASP Dependency-Check)
- **Secrets Detection** (TruffleHog)
- **Static Code Analysis** (SonarQube, PHPStan, PHPCS)
- **Dynamic Analysis** (OWASP ZAP for web scanning)
- **Container Security Scanning** (Trivy for Docker images)
- **CI/CD Integration** (GitLab CI, Jenkins, or GitHub Actions)
- **Slack Notifications** (Pipeline progress updates)
- **DefectDojo Integration** (Uploads reports at each security stage)

## Repository Structure
```
├── .gitignore
├── README.md
├── ci-cd-pipeline.yml  
├── Dockerfile           
├── composer.json        
├── config/              
├── src/                 
├── tests/               
└── reports/             
```

## Setup & Usage
### 1. Clone the Repository
```sh
git clone https://github.com/yourusername/secure-php-app.git
cd secure-php-app
```

### 2. Install Dependencies
```sh
composer install
```

### 3. Run Security Checks Locally
```sh
phpstan analyse --level=max src/
phpcs --standard=PSR12 src/
composer audit
```

### 4. Run the CI/CD Pipeline
The pipeline runs automatically on push, but you can trigger it manually:
```sh
git push origin main
```

### 5. View Security Reports in DefectDojo
Visit **DefectDojo Dashboard** to review uploaded reports.

### 6. Slack Notifications
Pipeline status updates are sent to the configured Slack channel.

## Contribution
Feel free to fork and contribute! Open a PR with your improvements. 🚀

