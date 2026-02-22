echo -e "${BLUE}[MITRE] T1552 - Unsecured Credentials${NC}"
echo ""
echo -e "${YELLOW}[+] Searching for Sensitive Files:${NC}"

FILES=$(find /home -type f \( -name "*.key" -o -name "id_rsa" -o -name "*.pem" \) 2>/dev/null)

if [ -n "$FILES" ]; then
    echo -e "${RED}[!] Sensitive Files Found:${NC}"
    echo "$FILES"
    RISK_SCORE=$((RISK_SCORE+2))
    MITRE_TECHNIQUES+=("T1552 - Unsecured Credentials")
else
    echo -e "${GREEN}[-] No Sensitive Credential Files Found.${NC}"
fi

