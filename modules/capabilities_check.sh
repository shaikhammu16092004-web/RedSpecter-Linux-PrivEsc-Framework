echo -e "${BLUE}[MITRE] T1548 - Abuse Elevation Control Mechanism${NC}"
echo ""
echo -e "${YELLOW}[+] Checking Linux Capabilities:${NC}"

CAPS=$(getcap -r / 2>/dev/null)

if [ -n "$CAPS" ]; then
    echo -e "${RED}[!] Capabilities Found:${NC}"
    echo "$CAPS"

    RISK_SCORE=$((RISK_SCORE+2))
    MITRE_TECHNIQUES+=("T1548 - Abuse Elevation Control Mechanism")

else
    echo -e "${GREEN}[-] No Dangerous Capabilities Found.${NC}"
fi

