# WalletKit

WalletKit is a Swift custom built SDK on top of web3swift for creating, restoring multiaccount wallets, signing, sending transactions and getting account balance and much more

## Installation

### Swift Package Manager

WalletKit is compatible with Swift Package Manager v5 (Swift 5 and above). Simply add it to the dependencies in your `Package.swift`.

```Swift
dependencies: [
    .package(url: "https://github.com/awaiskhan1304/WalletSDK", from: "1.0.0")
    .package(url: "https://github.com/web3swift-team/web3swift.git", exact: "3.1.2"),
]
```
Add then link the frameworks to the project build phases
- navigate to prohect build phases oprn link binary with libraries and drag drop WalletKitFramework and secp256k1

## Usage
```Swift
import WalletKitFramework
```
### Create account

#### Parameters  
##### password  - Account Password
##### network   - Account network
##### words     - recovery phrases for recovering account
##### accountIndex - account to recover using recovery phrase i.e. multiple accounts with same recovery phrase

```Swift
let address = Web3Wrapper.shared.createPrivateKey(password: "123", network: BlockchainNetworkType = .ethereum,words: [""],accountIndex: 0)
```
### Get accounts
```Swift
    let accounts = Web3Wrapper.shared.getAccounts ()
```
### Remove account
#### Parameters  
##### account  - Address of the account to be removed
##### removeAll  - Remove all accounts
```Swift
    Web3Wrapper.shared.removeAccount (account: String, removeAll: Bool = false)
```
### Validate password of account
#### Parameters  
##### account  - Address of the account to be validated
##### password  - password of the account
```Swift
    let validated = Web3Wrapper.shared.validatePassword (account: String,password: String)
```
### Perform sign/send transaction
#### Parameters  
##### type: indicate the transaction type sign or send
##### fromAddress: address of the account from which transaction is to be performed
##### chainId: chainId of the network on which transaction is performed
##### rpcUrl: rpc url of the account from which transaction is to be performed
##### password: password of the account which of used for transaction
##### toAddress: receriver address
##### gasPrice: gas price represnted in hex format
##### gasLimit: gas limit represnted in hex format
##### value: amount to be transfered
##### data: contract transaction

##### returns transaction hash in case of sending transaction and signature incase of signing tranaction,
     error in case there is error
```Swift
let (txHash/signature,error) = Web3Wrapper.shared.performTransaction (_ type: TransactionType,_ fromAddress: String, chainId: Int,rpcUrl: String,password: String,toAddress: String = "",gasPrice: String = "",gasLimit: String = "",value: Double = 0.0, data: String = "")
``` 
### Get Account Balance
#### Parameters  
##### account: address for which to get balance
##### chainId: chainId of network on which to get balance
##### rpcUrl: rpc url of network on which to get balance
```Swift
    let balance = Web3Wrapper.shared.getBalance (_ account: String,chainId: Int, rpcUrl: String)
```
