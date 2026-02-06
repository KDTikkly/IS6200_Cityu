# IS6200: Smart Contract Development (CityU)

This repository serves as a portfolio of my smart contract development work for the **IS6200** course at the City University of Hong Kong. All assignments are developed, compiled, and tested using the **Remix IDE**.

## 🛠 Development Environment
* **IDE:** [Remix Online IDE](https://remix.ethereum.org/)
* **Language:** Solidity (^0.8.0)
* **Compiler:** Remix In-browser Compiler
* **Test Network:** Remix VM (Cancun) / Sepolia Testnet

## 📂 Coursework Progress

| Week | Project Name | Description | Status |
| :--- | :--- | :--- | :--- |
| **Week 1** | Setup | Initial environment configuration and tool installation. | Completed |
| **Week 2** | **ERC-20 Token** | Developed a standard fungible token contract featuring minting and transfer logic. | Completed |
| **Week 3** | **Student Registry** | A contract to manage university student records with administrative controls. | Completed |

---

## 📝 Assignment Overviews

### Week 2: ERC-20 Smart Contract
In this assignment, I implemented a standard ERC-20 token.
* **Functionality:** Tracking balances, managing total supply, and enabling secure transfers between addresses.
* **Objective:** Understanding the EIP-20 standard and mapping-based data structures in Solidity.

### Week 3: Student Registry Contract
Based on the Week 3 Instructions, this contract manages student records for a university.
* **Administrator Access:** Implemented access control so only administrators can add or update student data.
* **Record Management:**
    * Add new student profiles.
    * Update existing student status.
    * Retrieve student information via public getter functions.
* **Logic:** Utilizes `struct` to define student data and `mapping` for efficient record lookup.

## 🚀 How to Run
1.  Open [Remix IDE](https://remix.ethereum.org/).
2.  Import the `.sol` files from the `/contracts` folder of this repository.
3.  Navigate to the **Solidity Compiler** tab and click **Compile**.
4.  Go to **Deploy & Run Transactions**, select **Remix VM**, and click **Deploy**.
5.  Interact with the contract using the deployed contract UI.

## ⚖️ Disclaimer
This repository is for educational purposes. Students currently enrolled in IS6200 should refer to the City University of Hong Kong's academic integrity policy before referencing this material.

---
**Author:** Cicerone  
**Institution:** City University of Hong Kong (CityU)  
**Term:** Spring 2026
