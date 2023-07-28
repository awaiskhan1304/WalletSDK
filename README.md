# WalletKit

WalletKit is a Swift SDK for creating, restoring multiaccount wallets, signning, sending transactions and getting account balance

## Installation

### Swift Package Manager

WalletKit is compatible with Swift Package Manager v5 (Swift 5 and above). Simply add it to the dependencies in your `Package.swift`.

```Swift
dependencies: [
    .package(url: "https://github.com/awaiskhan1304/WalletSDK", from: "1.0.0")
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

