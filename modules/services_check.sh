echo -e "${BLUE}[MITRE] T1543 - Create or Modify System Process${NC}"
echo -e "${YELLOW}[+] Checking Running Services:${NC}"

RUNNING_SERVICES=$(systemctl list-units --type=service --state=running 2>/dev/null | head -n 20)

if [ -n "$RUNNING_SERVICES" ]; then
    echo "$RUNNING_SERVICES"
else
    echo -e "${GREEN}[-] Could not retrieve services.${NC}"
fi

echo -e "${YELLOW}[+] Checking Listening Ports:${NC}"
netstat -tulnp 2>/dev/null | head -n 20

