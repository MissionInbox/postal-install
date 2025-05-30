# Postal Installation Tools

This repository contains the tools needed to quickly get started with Postal.

For full details on how to use it [read the documentation](https://docs.postalserver.io).

## Installing pre-requisites
```bash
curl https://raw.githubusercontent.com/mrkimoz/postal/refs/heads/main/main.sh | bash
```

## Installing Web/API Servers
```bash
curl https://raw.githubusercontent.com/mrkimoz/postal/refs/heads/main/web-initialize.sh | bash
```

## Installing SMTP Servers
```bash
curl https://raw.githubusercontent.com/mrkimoz/postal/refs/heads/main/smtp-initialize.sh | bash
```

## Installing Hosts File

```bash
wget https://raw.githubusercontent.com/mrkimoz/postal/refs/heads/main/adjusts.sh && chmod +x adjusts.sh && sh adjusts.sh
```
