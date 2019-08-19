<p align="center">
  <a href="https://talaikis.com/">
    <img alt="Talaikis Ltd." src="https://github.com/TalaikisInc/talaikis.com_react/blob/master/media/logo.png" width="228">
  </a>
</p>

# Post-receive Hook

## Features

* For Node.js projects.
* Will not allow commits/ pushes with failing (mocha + chai) tests (see package.json).
* Will allow one-click deployments to remote servers after initial setup.

## One click deployments

Initial example:

1. Configure passwordless ssh login to remote server.
2. Edit .env and ./.scripts.
3. Then:

```bash
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
