#!/bin/bash
set -e

echo "=== Vérification des ports ouverts ==="
ss -tuln

echo "=== Utilisateurs sudo ==="
getent group sudo

echo "=== Mises à jour disponibles (Ubuntu/Debian) ==="
apt update -qq
apt list --upgradable

echo "=== Fin du contrôle ==="
