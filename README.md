# 💵 Marhaba US Dollar Coin (MUSDC)

Welcome to the **Marhaba US Dollar Coin (MUSDC)** — a decentralized, crypto-collateralized, algorithmically stabilized stablecoin project, inspired by MakerDAO and built using the Foundry framework.

---

## ⚡ Quick Info

| Feature               | Details                                      |
|----------------------|----------------------------------------------|
| **Stability Target** | Pegged to **$1.00** USD                      |
| **Stability Method** | 🧠 Algorithmic (Mint/Burn via smart contract)|
| **Collateral Type**  | 📦 Exogenous Crypto Assets                   |
| **Assets Accepted**  | `wETH`, `wBTC`                               |
| **Price Oracle**     | 📡 [Chainlink](https://chain.link/) Feeds   |
| **Minting Condition**| ✅ Users can **only mint** when sufficient collateral is provided |

---

## 🛠️ How It Works

1. **Collateral Deposit**
   - Users deposit `wETH` or `wBTC` as collateral into the MUSDC engine.
  
2. **Minting**
   - Based on live Chainlink price feeds, users can mint MUSDC up to a safe collateralization ratio (e.g., 150%).

3. **Redeeming**
   - Burn MUSDC to unlock collateral, maintaining system stability.

4. **Liquidation**
   - If collateral value drops below the safe threshold, positions can be liquidated to protect the peg.

---

## 🔗 Chainlink Price Feeds Used

| Asset | Feed Address (Sepolia Testnet) |
|-------|-------------------------------|
| `ETH/USD` | `0x694AA1769357215DE4FAC081bf1f309aDC325306` |
| `BTC/USD` | `0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43` |

---

## 🔄 Token Exchange

Simple smart contract functions are implemented to:
- 🔄 Swap ETH or BTC into MUSDC
- 💱 Get real-time USD value using Chainlink Oracles

---

## 🧪 Tech Stack

- **Solidity 0.8.18+**
- **Foundry** (`forge`, `anvil`)
- **Chainlink Price Feeds**
- **OpenZeppelin Contracts**
- Type-safe and gas-optimized development

---

## 🚧 Dev Notes

- Only accepts `wrapped` assets like `wETH` and `wBTC`.
- No centralized authority — all logic is on-chain and decentralized.
- Stability via overcollateralization.

---


