# linux-admin-scripts
Collection de scripts utiles pour l'administration Linux


## Scripts inclus
- `create_user.sh` — créer un utilisateur avec options
- `backup.sh` — sauvegarde simple d'un dossier vers un répertoire local avec rotation
- `security-check.sh` — contrôles basiques (ports, sudoers, mises à jour)

## Exemple : create_user.sh
```bash
./create_user.sh alice "Alice Dupont" --sudo
