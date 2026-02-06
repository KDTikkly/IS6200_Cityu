# IS6200: Smart Contract Development (CityU)

This repository contains my homework assignments for the **IS6200** course at the City University of Hong Kong. All contracts are developed and tested using the **Remix IDE**.

## 🛠 Development Environment
- **IDE:** [Remix Online IDE](https://remix.ethereum.org/)
- **Language:** Solidity (0.8.0)
- **Compiler:** Default Remix Compiler
- **Network:** Remix VM (Osaka)

## 📂 Coursework Progress

| Week | Project Name | Description | Status |
| :--- | :--- | :--- | :--- |
| **Week 1** | Setup | Initial environment configuration. | ✅ Done |
| **Week 2** | **Simple Storage** | A basic contract to store and retrieve a `uint256` value on the blockchain. | ✅ Done |
| **Week 3** | **Student Registry** | A contract for managing university student records with admin update capabilities. | ✅ Done |

---

## 📝 Assignment Details

### [Week 2] Simple Storage Contract
**File:** `Week_02/Storage.sol`
* **Purpose:** Demonstrates the basics of state variables and function visibility (`public`, `view`).
* **Functions:**
    * `store(uint256 num)`: Updates the state variable with a new number.
    * `retrieve()`: Returns the current stored value without consuming gas (view function).

### [Week 3] Student Registry Contract
**File:** `Week_03/StudentRegistry.sol`
* **Purpose:** Manages university student records (Add, Update, Retrieve).
* **Key Features:**
    * **Administrative Control:** Only authorized addresses can modify data.
    * **Data Structures:** Uses `struct` to group student attributes and `mapping` for efficient ID-based lookups.
    * **Functions:** Ability to add new students, update their enrollment status, and fetch details by ID.

## 🚀 How to Deploy (Remix)
1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file (e.g., `StudentRegistry.sol`) and paste the code from this repo.
3. In the **Solidity Compiler** tab, click **Compile**.
4. In the **Deploy & Run Transactions** tab, select **Remix VM** and click **Deploy**.
5. Use the terminal buttons to interact with the contract functions.

---
**Author:** Cicerone
**Institution:** City University of Hong Kong (CityU)  
**Term:** Spring 2026
