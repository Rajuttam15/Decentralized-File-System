# 📦 Decentralized File System

A blockchain-based decentralized file storage platform that leverages **IPFS** for storage and **Ethereum smart contracts** to verify and track file authenticity. This system empowers users to upload files securely, store their hashes on-chain, and ensure integrity through cryptographic verification.

---

## 🚀 Key Features

- 📁 Upload files through a user-friendly web interface
- 🌐 Files are pinned to **IPFS** (InterPlanetary File System)
- 🔐 File hashes are recorded on the **Ethereum blockchain**
- ✅ Anyone can verify the integrity of uploaded files
- 🦊 Metamask integration for seamless wallet connectivity
- 📜 Built using **Solidity**, **Hardhat**, **IPFS**, and **Vanilla JavaScript**

---

## 📸 Demo

> Coming Soon: [Live Demo](#)

![IPFS Upload Interface Screenshot](./assets/demo.png)

---

## 🛠️ Tech Stack

| Layer       | Tech / Tool                     |
|-------------|----------------------------------|
| Smart Contract | Solidity, Hardhat             |
| Blockchain     | Ethereum (Localhost / Testnet)|
| Storage        | IPFS via HTTP client          |
| Web3 Connection| Web3.js, MetaMask             |
| Frontend       | HTML, CSS, JavaScript         |

---

## 📂 Project Structure

Decentralized-File-System/
├── contracts/           # Smart contracts (Solidity)
│   └── FileStorage.sol
├── scripts/             # Deployment scripts
│   └── deploy.js
├── test/                # Contract unit tests
├── frontend/            # Frontend UI and logic
│   ├── index.html
│   ├── app.js
│   └── style.css
├── hardhat.config.js    # Hardhat configuration
├── README.md
└── package.json

---

## 🧪 Smart Contract Overview

### 🔐 `FileStorage.sol`
A smart contract that stores file hashes and metadata. It ensures:
- Unique file identifiers
- Owner tracking (via `msg.sender`)
- Timestamping for integrity and auditability

---

## 📦 Installation & Setup

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/Rajuttam15/Decentralized-file-system.git
cd Decentralized-file-system

2️⃣ Install Dependencies
npm install

3️⃣ Compile Smart Contracts
npx hardhat compile

4️⃣ Run Local Blockchain (Optional)
npx hardhat node

5️⃣ Deploy Contracts
npx hardhat run scripts/deploy.js --network localhost

🌐 Run Frontend

Open the frontend manually:
frontend/index.html


💡 Usage
	1.	Connect your wallet using MetaMask
	2.	Choose a file to upload
	3.	File is uploaded to IPFS
	4.	IPFS hash is returned
	5.	Hash can be written to blockchain via smart contract


🧰 Developer Notes

Web3 Integration
	•	Ensure MetaMask is installed and connected to the correct network (e.g., Hardhat localhost or Sepolia).
	•	The contract ABI and deployed address should match the one used in the app.js file.

IPFS Setup
	•	Uses the public IPFS gateway (https://ipfs.io) via HTTP client.
	•	Can be extended with Infura/Pinata for pinning services.

📌 Roadmap
	•	Basic file upload to IPFS
	•	Store hash on Ethereum
	•	Digital signature and hash verification
	•	Access control using Ethereum addresses
	•	File download + verification UI
	•	Testnet deployment (e.g., Sepolia)
	•	React-based frontend (optional upgrade)


📜 License

This project is licensed under the MIT License. See the LICENSE file for details.

👨‍💻 Author

Raj Uttam
GitHub: @Rajuttam15
