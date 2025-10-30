# 🧱 SimpleStorage Smart Contract

<img width="1920" height="1080" alt="Screenshot (13)" src="https://github.com/user-attachments/assets/977f320f-c2d3-4022-a6cf-a7f1cf5d2a9a" />

##Here is link of successfully deployed smart contract of Simple-Storage:https://celo-alfajores.blockscout.com/address/0xdE219261d148F15D3F41506e6C19e17cFD580e1a

## 📖 Overview

**SimpleStorage** is one of the most fundamental smart contracts written in **Solidity**, the programming language for Ethereum-based blockchains.
It demonstrates how to **store**, **update**, and **retrieve** a simple unsigned integer (`uint256`) on the blockchain.

This contract is perfect for beginners learning the basics of:

* Solidity syntax
* State variables
* Gas usage
* Public and view functions
* Smart contract deployment

---

## ⚙️ Features

* 🧮 **Store a Number:** Save any unsigned integer (`uint256`) on the blockchain.
* 🔁 **Update the Number:** Modify the stored value anytime using a transaction.
* 🔍 **Retrieve the Number:** Read the stored value without any gas cost.
* 🔒 **Persistent Storage:** Data is permanently stored on-chain until changed.

---

## 📜 Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
// This license identifier is required by Solidity compilation standards.

pragma solidity ^0.8.0;

/**
 * @title SimpleStorage
 * @dev Stores a single unsigned integer (uint256) and provides functions
 * to get and set the value.
 */
contract SimpleStorage {
    // State variable to store the number. State variables are permanently 
    // stored on the blockchain.
    uint256 private storedData;

    // A constructor is a special function that runs only once when the
    // contract is first deployed to the blockchain.
    constructor() {
        // Initialize the number to zero.
        storedData = 0;
    }

    /**
     * @notice Updates the value of the storedData.
     * @param _newValue The new number to be stored.
     */
    function setNumber(uint256 _newValue) public {
        storedData = _newValue;
        // Functions that modify state variables (like this one) cost 'gas' 
        // to execute because they change the blockchain's state.
    }

    /**
     * @notice Retrieves the current value of the storedData.
     * @return The current stored number.
     */
    function getNumber() public view returns (uint256) {
        // The 'view' keyword means this function does not modify the 
        // blockchain's state. It only reads it, so it costs no gas to call.
        return storedData;
    }
}
```

---

## 🧠 How It Works

### 1. **State Variable**

```solidity
uint256 private storedData;
```

This variable holds the number stored on the blockchain.
It’s marked `private`, so only functions inside the contract can access it directly.

---

### 2. **Constructor**

```solidity
constructor() {
    storedData = 0;
}
```

The constructor runs **once** when the contract is deployed, initializing the stored value to `0`.

---

### 3. **Setting a Value**

```solidity
function setNumber(uint256 _newValue) public
```

This function updates the stored value on the blockchain.
Because it **modifies state**, it consumes **gas** (paid by the sender).

Example call:

```solidity
setNumber(42);
```

---

### 4. **Getting a Value**

```solidity
function getNumber() public view returns (uint256)
```

This function reads the current value without modifying the blockchain.
As a **view** function, it costs **no gas** when called externally (read-only).

Example call:

```solidity
getNumber(); // returns 42
```

---

## 🧪 Testing on Remix IDE

### Step 1. Open Remix

Go to [Remix IDE](https://remix.ethereum.org).

### Step 2. Create a New File

Create a new Solidity file named:
`SimpleStorage.sol`

### Step 3. Paste the Code

Copy and paste the smart contract code above.

### Step 4. Compile

Click the **Solidity Compiler** tab → Select version `0.8.x` → Click **Compile SimpleStorage.sol**.

### Step 5. Deploy

Go to **Deploy & Run Transactions** tab → Click **Deploy** under the correct environment (e.g., JavaScript VM).

### Step 6. Interact

* Use **setNumber()** to set a number.
* Use **getNumber()** to view the stored value.

Each transaction is visible in the **Remix console**.

---

## 🧰 Function Summary

| Function                       | Type   | Description                         |
| ------------------------------ | ------ | ----------------------------------- |
| `constructor()`                | Public | Initializes stored value to `0`     |
| `setNumber(uint256 _newValue)` | Public | Stores a new unsigned integer value |
| `getNumber()`                  | View   | Returns the currently stored number |

---

## 💰 Gas Usage Notes

| Action          | Changes State? | Consumes Gas? | Description                       |
| --------------- | -------------- | ------------- | --------------------------------- |
| `constructor()` | ✅              | ✅             | Runs once during deployment       |
| `setNumber()`   | ✅              | ✅             | Writes a new value to blockchain  |
| `getNumber()`   | ❌              | ❌             | Reads data without changing state |

---

## 🧩 Example Interaction

1. **Deploy** contract → storedData = `0`
2. **Call setNumber(15)** → storedData becomes `15`
3. **Call getNumber()** → returns `15`

All changes are **visible on-chain** and cannot be deleted.

---

## 🔒 Key Concepts Demonstrated

* **State Variables:** Persistent data stored on the blockchain.
* **Constructor:** Initialization logic that runs once on deployment.
* **Public vs Private:** Access modifiers controlling who can interact.
* **Gas Consumption:** Cost of transactions that change blockchain state.
* **View Functions:** Functions that read state for free.

---

## 🚀 Next Steps (Advanced Ideas)

If you want to extend this project, consider adding:

* 🧠 **Access Control** — Only allow the contract owner to update the value.
* 🔄 **Event Emission** — Emit an event when a new value is stored.
* 🕒 **Timestamp Storage** — Record when the value was last updated.
* 🌐 **Frontend Integration** — Use **React + Ethers.js** or **Next.js** to interact with this contract visually.

---

## 🧑‍💻 Author

**Soham Mazumder**
Blockchain Developer | Smart Contracts | Web3 Enthusiast

---

## 📜 License

This project is licensed under the **MIT License**.
You’re free to use, modify, and distribute it with proper attribution.

