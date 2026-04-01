# 🛡️ RedSpecter – Linux Privilege Escalation Automation Toolkit

## 📖 Overview
RedSpecter is an advanced Linux Privilege Escalation framework designed to automate the enumeration of security misconfigurations and potential escalation vectors.

The toolkit scans a system to identify vulnerabilities such as SUID binaries, weak permissions, misconfigured services, cron job weaknesses, and kernel-level risks — without executing harmful exploits.

It simulates real-world **red team enumeration** and **blue team auditing** techniques used in penetration testing and SOC environments.

---

## ⚠️ Disclaimer
This tool is developed strictly for **educational purposes and authorized security testing only**.  
Do not use it on systems without proper permission.

---

## 🎯 Objectives
- Automate privilege escalation vulnerability scanning
- Identify real-world Linux misconfigurations
- Simulate attacker enumeration techniques
- Generate actionable security insights for defenders

---

## 🚀 Features

### 🔹 Automated System Enumeration
- Collects system info, users, groups, kernel version

### 🔹 SUID/SGID Binary Detection
- Finds exploitable binaries using GTFOBins techniques

### 🔹 Weak Permission Analysis
- Detects world-writable files & directories
- Identifies insecure system-critical files

### 🔹 Cron Job Vulnerability Analysis
- Detects writable cron scripts
- Identifies privilege escalation via scheduled tasks

### 🔹 Misconfigured Services Detection
- Analyzes systemd services
- Detects insecure PATH variables

### 🔹 Environment & Kernel Analysis
- Checks environment variables
- Identifies vulnerable/outdated kernels

---

## 🛠️ Tools & Technologies

- **Languages:** Bash / Python  
- **Linux Commands Used:**  
  - find, ls, systemctl  
  - sudo -l, crontab  
  - uname, getcap  
  - grep, awk, sed  

---

## Demo Screenshort

 ![linux1](https://github.com/user-attachments/assets/4deeac70-b5e8-45c9-9a05-3ebf0be90b06)

 ![linux2](https://github.com/user-attachments/assets/d7f6c4b9-a454-4db4-b696-b4391dc44aa2)


## ⚙️ Installation

```bash
git clone https://github.com/shaikhammu16092004-web/RedSpecter-Linux-PrivEsc-Framework.git
cd RedSpecter-Linux-PrivEsc-Framework
chmod +x privesc.sh
bash privesc.sh





