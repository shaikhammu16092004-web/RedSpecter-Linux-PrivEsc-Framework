echo -e "${BLUE}[MITRE] T1053 - Scheduled Task / Cron${NC}"
echo ""
echo -e "${YELLOW}[+] Checking Cron Jobs:${NC}"

CRON=$(ls -la /etc/cron* 2>/dev/null)

if [ -n "$CRON" ]; then
    echo "$CRON"
    RISK_SCORE=$((RISK_SCORE+1))
    MITRE_TECHNIQUES+=("T1053 - Scheduled Task / Cron")
else
    echo -e "${GREEN}[-] No Suspicious Cron Jobs Found.${NC}"
fi

