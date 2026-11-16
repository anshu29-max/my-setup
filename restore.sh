#!/bin/bash
echo "Restoring Dev Anshu Setup..."

# 1. Fix Path
export PATH="$HOME/.local/bin:$HOME/.opencode/bin:$PATH"
echo 'export PATH="$HOME/.local/bin:$HOME/.opencode/bin:$PATH"' >> ~/.bashrc

# 2. Install Git + 【entity-GitHub¦canonical_name=GitHub】
sudo apt update -y
sudo apt install -y git gh curl

# 3. Your 【entity-GitHub¦canonical_name=GitHub】 Identity - Permanent
git config --global user.name "Dev Anshu"
git config --global user.email "bishtansh29@gmail.com"
git config --global init.defaultBranch main
git config --global pull.rebase false

# 4. Install OpenCode
curl -fsSL https://opencode.ai/install | bash
source ~/.bashrc

# 5. Restore Free Key (if you saved it)
if [ -f ~/mykey.txt ]; then
  echo "export OPENROUTER_API_KEY=\"$(cat ~/mykey.txt)\"" >> ~/.bashrc
fi

echo "DONE! Now just run: gh auth login"
echo "Then run: opencode"
