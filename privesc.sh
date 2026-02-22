
#!/bin/bash
# Colors

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m'

if [ "$1" == "--quick" ]; then
    QUICK_MODE=1
else
    QUICK_MODE=0
fi


# Create Reports Folder
mkdir -p reports
REPORT="reports/scan_$(date +%F_%H-%M-%S).txt"

# Save Output to Report File
exec > >(tee -a $REPORT)
exec 2>&1

echo -e "${BLUE}======================================"
echo -e " RedSpecter Linux PrivEsc Framework"
echo -e "======================================${NC}"

echo -e "${YELLOW}[+] Scan Started At: $(date)${NC}"

echo ""
echo -e "${YELLOW}[+] Current User:${NC}"
whoami

echo ""
echo -e "${YELLOW}[+] Kernel Version:${NC}"
uname -a


RISK_SCORE=0

# Run Modules
source modules/sudo_check.sh
source modules/suid_check.sh
source modules/sensitive_check.sh
source modules/cron_check.sh
source modules/capabilities_check.sh
source modules/permissions_check.sh
source modules/services_check.sh
source modules/kernel_check.sh

echo ""
echo -e "${BLUE}========== RISK SUMMARY ==========${NC}"

if [ $RISK_SCORE -ge 5 ]; then
    echo -e "${RED}Overall Risk Level: HIGH${NC}"
elif [ $RISK_SCORE -ge 3 ]; then
    echo -e "${YELLOW}Overall Risk Level: MEDIUM${NC}"
source modules/suid_check.sh
source modules/sensitive_check.sh
source modules/cron_check.sh
else
    echo -e "${GREEN}Overall Risk Level: LOW${NC}"
fi


echo ""
echo -e "${GREEN}[+] Scan Completed Successfully!${NC}"
echo -e "${GREEN}[+] Report Saved At: $REPORT${NC}"

echo ""
echo "========== MITRE SUMMARY =========="

if [ ${#MITRE_TECHNIQUES[@]} -eq 0 ]; then
    echo "No MITRE Techniques Detected"
else
    echo "Techniques Detected:"
    for tech in "${MITRE_TECHNIQUES[@]}"; do
        echo "- $tech"
    done
fi
