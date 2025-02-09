# yggdrasil

> proxmox resources

## getting started: macos

### install dependencies

```bash
brew install git gh obsidian zed tailscale \
&& brew install --cask visual-studio-code \
&& brew install --cask lm-studio
```

### auth

```bash
gh auth login -p ssh
gh auth setup-git
tailscale up
```

### clone

```bash
git clone git@github.com:sauce-net/yggdrasil.git --recurse-submodules
```

## getting started: windows

### install dependencies

```powershell
winget install Microsoft.VisualStudioCode
winget install Microsoft.WindowsTerminal Microsoft.PowerShell
winget install Git.Git Fork.Fork GitHub.GitHubCli Obsidian.Obsidian

```

### auth

```powershell
gh auth login -p ssh
gh auth setup-git
tailscale up
```

### clone

```powershell
git clone git@github.com:sauce-net/yggdrasil.git --recurse-submodules
```

## getting started: lmstudio

- [getting started](https://lmstudio.ai/docs/basics)
- [downloading an llm](https://lmstudio.ai/docs/basics/download-model)
- [adding context](https://lmstudio.ai/docs/basics/rag)
- [managing chats](https://lmstudio.ai/docs/basics/chat)

## yggdrasil-docs

documentation, best read in [obsidian](https://obsidian.md/)
