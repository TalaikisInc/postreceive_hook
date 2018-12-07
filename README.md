# Post-receive Hook

## Features

* For Node.js projects.
* Will not allow commits/ pushes with failing (mocha + chai) tests (see package.json).
* Will allow one-click deployments to remote servers after initial setup.

## One click deployments

Initial example:

1. Configure passwordless ssh login to remote server.
2. Edit .env with approppriate variables.
3. Then:

```bash
scp -r ./.scripts root@173.212.207.88:/root/
# For subsequent projects, only new .env is needeed
scp ./.env root@173.212.207.88:/root/.scripts
ssh root@173.212.207.88 "chmod +x /root/.scripts/pre_remote.sh"
# Verify permissions (optional):
ssh root@173.212.207.88 "ls -la /root/.scripts"
# Install remote repo:
ssh root@173.212.207.88 "bash -s" < ./.scripts/pre_remote.sh
# Add remote git repo:
chmod +x pre_local.sh
./pre_local.sh
```

4. Then any push will be:

```bash
npm run deploy
```

## Other commands

```bash
# Bundle sizes:
npm run analyze
# Comprehensive load test:
npm run loadtest
# Lighthouse metrics
npm run metrics
# Security
npm run scan
```
