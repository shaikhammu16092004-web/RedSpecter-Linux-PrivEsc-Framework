#!/bin/bash

echo -e "${BLUE}[MITRE] T1548 - Abuse Elevation Control Mechanism${NC}"
echo "[+] Checking Sudo Privileges:"

if sudo -n -l 2>/dev/null | grep -q "(ALL) ALL"; then
    echo "[!] Full Sudo Access Detected – HIGH RISK"
    MITRE_TECHNIQUES+=("T1548 - Abuse Elevation Control Mechanism")
fi

