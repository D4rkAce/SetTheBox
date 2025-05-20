
# SetTheBox

## 📥 Installation

Clone the repository and give execution permissions to the script:

```bash
git clone https://github.com/D4rkAce/SetTheBox.git
cd SetTheBox
chmod +x setTheBox.sh
```

---

## ⚙️ Zsh Terminal Usage (Kali/Parrot OS)

Paste the following commands in your Zsh terminal:

```zsh
# Clone the repository
git clone https://github.com/D4rkAce/SetTheBox.git

# Enter the project directory
cd SetTheBox

# Give execution permission
chmod +x setTheBox.sh

# Run the script
./setTheBox.sh
```

### 🔁 Optional: Add alias to your `.zshrc`

If you want to be able to run the script from anywhere by just typing `setthebox` in your terminal, follow these steps:

1. Open your `.zshrc` file (this is the configuration file for your Zsh shell):

```bash
nano ~/.zshrc
```

2. Scroll to the **bottom of the file** and **add this line**:

```zsh
alias setthebox="$HOME/SetTheBox/SetTheBox.sh"
```

> 📌 Make sure the folder `SetTheBox` is located in your home directory (`$HOME`). If it's in another location, update the path accordingly.

3. Save and exit (`Ctrl + O`, `Enter`, then `Ctrl + X`).

4. Reload your shell configuration so the alias is recognized:

```zsh
source ~/.zshrc
```

Now you can simply run:

```zsh
setthebox
```

---

## 📄 Description  
This Bash script sets up a ready-to-go environment for working on Hack The Box (HTB) machines. It automates folder creation, initializes working files, and includes a help file with enumeration commands based on the selected target: **Active Directory**, **Linux**, or **Windows**.

The script is lightweight and fully terminal-based, perfect for CTF players and penetration testers who want a structured workspace without distractions.

---

## 🧪 POC  
Execute the Bash script to start your HTB workspace 🧠

```bash
./setTheBox.sh
```

You will be asked to:

- Choose the machine type:
  - Active Directory
  - Linux Box
  - Windows Box
- Enter a machine name (e.g., `Timelapse`, `Forest`, `Bashed`)

This will generate a structured directory containing:

- `recon/`  
- `exploits/`  
- `loot/`  
- `scripts/`  
- `bloodhound/` (only for AD)  
- `users`  
- `creds`  
- `hashes`  
- `help` ➜ A text file with useful enumeration commands

---

## 🧾 Help File Content  

Depending on your selection, the `help` file will contain:

### ✅ Active Directory  
- Nmap full port scan  
- RPC enumeration  
- SMB guest access  
- Kerbrute user enum  
- Kerberoasting & AS-REP Roasting (Impacket)  
- BloodHound collection  
- LDAP search basics  

### 🐧 Linux  
- Nmap scan with default scripts  
- Port scanning and version detection  
- FTP/SMB access checks  
- Basic post-exploitation tips  
- Cron jobs, SUIDs, and user hunting  
- Kernel version info  

### 🪟 Windows  
- Nmap scan  
- SMB & WinRM enumeration  
- Basic PowerShell recon  
- Services and task schedulers  
- Privilege escalation hints  
- Tools: PowerUp, WinPEAS, Seatbelt  

---

## 👥 Authors  
- [D4rkAce](https://github.com/D4rkAce)  
- [Zoyma](https://github.com/Zoyma)

---

## 🔗 Social Media  
Follow me for more content and updates:

[D4rkAce - Beacons](https://beacons.ai/d4rkace)
