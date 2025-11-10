# CCIP Rebase Token

<!-- <div align="center">
  <a href="https://github.com/Ramprasad4121/ccip-rebase-token">
    <img src="docs/images/ccip-banner.png" alt="CCIP Rebase Token Banner" width="600" height="300">
  </a>
</div> -->

<div align="center">
  Cross-Chain Rebase Token with Chainlink CCIP
  <br />
  <a href="#about"><strong>Explore the demo »</strong></a>
  <br />
  <br />
  <a href="https://github.com/Ramprasad4121/ccip-rebase-token/issues/new?assignees=&labels=bug&template=01_BUG_REPORT.md&title=bug%3A+">Report a Bug</a>
  ·
  <a href="https://github.com/Ramprasad4121/ccip-rebase-token/issues/new?assignees=&labels=enhancement&template=02_FEATURE_REQUEST.md&title=feat%3A+">Request a Feature</a>
  ·
  <a href="https://github.com/Ramprasad4121/ccip-rebase-token/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+">Ask a Question</a>
</div>

<div align="center">
<br />

[![Solidity](https://img.shields.io/badge/Solidity-^0.8.20-blue)](https://soliditylang.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-green)](LICENSE)

</div>

<details open="open">
<summary>Table of Contents</summary>

- [CCIP Rebase Token](#ccip-rebase-token)
  - [About](#about)
    - [Built With](#built-with)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
  - [Usage](#usage)
    - [Local Development](#local-development)
    - [Testnet (Sepolia)](#testnet-sepolia)
    - [Interactions](#interactions)
    - [Testing](#testing)
    - [Other Commands](#other-commands)
  - [Roadmap](#roadmap)
  - [Support](#support)
  - [Project Assistance](#project-assistance)
  - [Contributing](#contributing)
  - [Authors \& Contributors](#authors--contributors)
  - [Security](#security)
  - [License](#license)
  - [Acknowledgements](#acknowledgements)

</details>

---

## About

Cross-chain rebase token integrating Chainlink CCIP for bridging. Features elastic supply with discrete decreasing interest rates (static post-bridge), rewards for early/L2 users. Deposits/withdrawals on L1 only; bridging pauses interest but requires repayment on return. Built with Foundry for testing and deployment.

Why this? To enable secure, rewarding cross-chain tokenization with persistent user rates.

<!-- <details>
<summary>Screenshots</summary>
<br>

|                               Local Deployment Console                               |                               Deposit Transaction                               |
| :-------------------------------------------------------------------: | :--------------------------------------------------------------------: |
| <img src="docs/images/deploy-local.png" title="Anvil Deployment" width="100%"> | <img src="docs/images/deposit-tx.png" title="ETH Deposit" width="100%"> |

> Add screenshots of `make deploy` and `cast send deposit()`.

</details> -->

### Built With

- [Foundry](https://book.getfoundry.sh/) – Forge, Cast, Anvil
- [Chainlink CCIP](https://chain.link/cross-chain) – Bridging
- Solidity ^0.8.20
- [Make](https://www.gnu.org/software/make/) – Automation

## Getting Started

### Prerequisites

- Git (`git --version`)
- Foundry (`curl -L https://foundry.paradigm.xyz | bash && foundryup`; `forge --version`)

### Installation

1. Clone:
   ```bash
   git clone https://github.com/Ramprasad4121/ccip-rebase-token.git
   cd ccip-rebase-token
   ```

2. Build:
   ```bash
   forge build
   ```

3. Setup `.env` from `.env.example`: Add `SEPOLIA_RPC_URL`, `PRIVATE_KEY` (test only), `ETHERSCAN_API_KEY` (optional).

## Usage

### Local Development

- Start Anvil:
  ```bash
  make anvil
  ```

- Deploy:
  ```bash
  make deploy
  ```

### Testnet (Sepolia)

1. Fund: [Chainlink Faucet](https://faucets.chain.link/).
2. Deploy:
   ```bash
   make deploy ARGS="--network sepolia"
   ```

### Interactions

- Deposit ETH for tokens:
  ```bash
  cast send <VAULT_ADDRESS> "deposit()" --value 0.1ether --private-key $PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL
  ```

- Redeem tokens for ETH:
  ```bash
  cast send <VAULT_ADDRESS> "redeem(uint256)" <AMOUNT> --private-key $PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL
  ```

### Testing

- Unit/Fuzz:
  ```bash
  forge test
  ```

- Coverage:
  ```bash
  forge coverage --report lcov
  ```

### Other Commands

- Gas snapshot: `forge snapshot`
- Format: `forge fmt`
- Clean: `make clean`

## Roadmap

[Open issues](https://github.com/Ramprasad4121/ccip-rebase-token/issues).

- Enhancements: Multi-asset collateral, oracles
- Bugs: Vote with 👍

Future: Mainnet, frontend.

## Support

- [Issues](https://github.com/Ramprasad4121/ccip-rebase-token/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+)
- [X](https://x.com/0xramprasad)

## Project Assistance

- ⭐ [Star](https://github.com/Ramprasad4121/ccip-rebase-token)
- Tweet: "#CCIP #RebaseToken"
- Blog: [Dev.to](https://dev.to/)

## Contributing

Fork, branch (`git checkout -b feature/xyz`), commit, PR. See [CONTRIBUTING.md](docs/CONTRIBUTING.md).

## Authors & Contributors

- [Ramprasad4121](https://github.com/Ramprasad4121)

[Contributors](https://github.com/Ramprasad4121/ccip-rebase-token/contributors)

## Security

Audit before prod. Report: [SECURITY.md](docs/SECURITY.md). "As is."

## License

MIT License. See [LICENSE](LICENSE).

## Acknowledgements

- [Chainlink](https://chain.link/) – CCIP
- [Foundry](https://getfoundry.sh/) – Toolkit
- Ethereum community.