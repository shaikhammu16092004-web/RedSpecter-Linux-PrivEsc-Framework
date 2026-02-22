echo -e "${BLUE}[MITRE] T1222 - File and Directory Permissions Modification${NC}"
echo -e "${YELLOW}[+] Checking World-Writable Files:${NC}"

WW_FILES=$(find / -type f -perm -0002 2>/dev/null | head -n 20)

if [ -n "$WW_FILES" ]; then
    echo -e "${RED}[!] World Writable Files Found:${NC}"
    echo "$WW_FILES"
    RISK_SCORE=$((RISK_SCORE+2))
    MITRE_TECHNIQUES+=("T1222 - Weak File Permissions")
else
    echo -e "${GREEN}[-] No World Writable Files Found.${NC}"
fi

echo -e "${YELLOW}[+] Checking Writable /etc/passwd:${NC}"
if [ -w /etc/passwd ]; then
    echo -e "${RED}[!] /etc/passwd is Writable!${NC}"
    RISK_SCORE=$((RISK_SCORE+3))
else
    echo -e "${GREEN}[-] /etc/passwd Secure.${NC}"
fi

