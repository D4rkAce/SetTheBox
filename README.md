
# SetTheBox

## 📥 Global Installation (Recommended)

To install SetTheBox globally on your system and use it from any directory:

```bash
# Clone the repository
git clone https://github.com/D4rkAce/SetTheBox.git
cd SetTheBox

# Run the installer (requires administrator privileges)
sudo ./install.sh
```

Once installed, you can run SetTheBox from any directory by simply typing:

```bash
SetTheBox
```

### 🗑️ Uninstallation

To remove SetTheBox from your system:

```bash
cd SetTheBox
sudo ./uninstall.sh
```

---

## 📥 Manual Installation (Alternative)

If you prefer not to install globally, you can use the traditional method:

```bash
git clone https://github.com/D4rkAce/SetTheBox.git
cd SetTheBox
chmod +x SetTheBox
./SetTheBox
```

---

## ⚙️ Zsh Terminal Usage (Kali/Parrot OS)

### Option 1: Global Installation (Recommended)

```zsh
# Clone the repository
git clone https://github.com/D4rkAce/SetTheBox.git

# Enter the project directory
cd SetTheBox

# Run the installer
sudo ./install.sh

# Now you can run from anywhere!
SetTheBox
```

### Option 2: Manual Execution

```zsh
# Clone the repository
git clone https://github.com/D4rkAce/SetTheBox.git

# Enter the project directory
cd SetTheBox

# Give execution permissions
chmod +x SetTheBox

# Run the script
./SetTheBox
```

### 🔁 Optional: Add alias to your `.zshrc` (Only if using manual installation)

If you don't use the global installation but want to run the script from anywhere by typing `SetTheBox`, follow these steps:

0. Make sure the script has execution permissions. Run this command once:

```bash
chmod +x $HOME/SetTheBox/SetTheBox
```

1. Open your `.zshrc` file (this is the configuration file for your Zsh shell):

```bash
nano ~/.zshrc
```

2. Scroll to the **bottom of the file** and **add this line**:

```zsh
alias SetTheBox="$HOME/SetTheBox/SetTheBox"
```

> 📌 Make sure the folder `SetTheBox` is located in your home directory (`$HOME`). If it's in another location, update the path accordingly.

3. Save and exit (`Ctrl + O`, `Enter`, then `Ctrl + X`).

4. Reload your shell configuration so the alias is recognized:

```zsh
source ~/.zshrc
```

Now you can simply run:

```zsh
SetTheBox
```

---

## 📄 Description  
This Bash script sets up a ready-to-work environment for Hack The Box (HTB) machines. It automates folder creation, initializes work files, and includes a help file with enumeration commands based on your selected target: **Active Directory**, **Linux**, or **Windows**.

The script is lightweight and completely terminal-based, perfect for CTF players and pentesters who want a structured workspace without distractions.

---

## 🧪 POC  
Run the script to start your HTB workspace 🧠

**With global installation:**
```bash
SetTheBox
```

**With manual installation:**
```bash
./SetTheBox
```

You'll be prompted to:

- Choose the machine type:
  - Active Directory
  - Linux Box
  - Windows Box
- Enter the machine name (e.g., `Timelapse`, `Forest`, `Bashed`)

This will generate a structured directory containing:

- `recon/`  
- `exploits/`  
- `loot/`  
- `scripts/`  
- `bloodhound/` (solo para AD)  
- `users`  
- `pass`  
- `hashes`  
- `help` ➜ A text file with useful enumeration commands

---

## 🧾 Help File Content  

Depending on your selection, the `help` file will contain:

### ✅ Active Directory  
- Full port scan with Nmap  
- RPC enumeration  
- Guest access to SMB  
- User enumeration with Kerbrute  
- Kerberoasting and AS-REP Roasting (Impacket)  
- BloodHound collection  
- Basic LDAP searches  

### 🐧 Linux  
- Nmap scan with default scripts  
- Port scan and version detection  
- FTP/SMB access checks  
- Basic post-exploitation tips  
- Cron jobs, SUIDs, and user search  
- Kernel version information  

### 🪟 Windows  
- Nmap scan  
- SMB and WinRM enumeration  
- Basic PowerShell reconnaissance  
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
