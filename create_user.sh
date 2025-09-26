
Exemple `create_user.sh` :

```bash
#!/bin/bash
set -e

if [ "$(id -u)" -ne 0 ]; then echo "Run as root"; exit 1; fi

USERNAME="$1"
FULLNAME="$2"
ADD_SUDO="$3"

if [ -z "$USERNAME" ]; then
  echo "Usage: $0 username \"Full Name\" [--sudo]"
  exit 1
fi

adduser --gecos "$FULLNAME" --disabled-password "$USERNAME"
echo "User $USERNAME created."

if [ "$ADD_SUDO" == "--sudo" ]; then
  usermod -aG sudo "$USERNAME"
  echo "$USERNAME added to sudo group."
fi

