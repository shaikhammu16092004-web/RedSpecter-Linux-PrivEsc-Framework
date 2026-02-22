echo -e "${BLUE}[MITRE] T1068 - Exploitation for Privilege Escalation${NC}"
echo -e "${YELLOW}[+] Checking Kernel Version:${NC}"

KERNEL_VER=$(uname -r)
echo "$KERNEL_VER"

if [[ "$KERNEL_VER" == *"4."* || "$KERNEL_VER" == *"5.4"* ]]; then
    echo -e "${RED}[!] Potentially Vulnerable Kernel Version Detected${NC}"
    RISK_SCORE=$((RISK_SCORE+2))
    MITRE_TECHNIQUES+=("T1068 - Kernel Exploit")
else
    echo -e "${GREEN}[-] No obvious outdated kernel detected.${NC}"
fi

