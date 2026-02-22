echo -e "${BLUE}[MITRE] T1548 - Abuse Elevation Control Mechanism${NC}"
echo ""
echo -e "${YELLOW}[+] Checking Sudo Privileges:${NC}"

if sudo -n -l 2>/dev/null | grep -q "(ALL) ALL"; then
    echo -e "${RED}[!] Full Sudo Access Detected – HIGH RISK${NC}"
    RISK_SCORE=$((RISK_SCORE+3))
    MITRE_TECHNIQUES+=("T1548 - Abuse Elevation Control Mechanism")
else
    echo -e "${GREEN}[-] No Dangerous Sudo Configurations Found.${NC}"
fi

