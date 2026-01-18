#!/bin/bash
echo "##########################"
echo "COMPUTATION RESOURCES USAGE SCRIPT"
echo "##########################"
echo ""

echo "=== CPU USAGE ==="
top -bn1 | grep "Cpu(s)"

echo -e "\n=== MEMORY USAGE ==="
free -h

echo -e "\n=== DISK USAGE ==="
df -h

echo -e "\n=== ACTIVE PROCESSES ==="
echo "Total of active processes: $(ps aux | wc -l)"