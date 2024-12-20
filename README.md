# GameSwift Chain - Smart Contract Examples

### Install dependencies

After you `clone` the repository, go to the project catalog and type:

```shell
$ forge install
```

Create a `.env` file with the following variables:

ERC-20:

```shell
DEPLOYER_PRIVATE_KEY=

TOKEN_NAME=
TOKEN_SYMBOL=
TOKEN_INITIAL_SUPPLY=
```

#### Build

```shell
$ forge build
```

#### Test

```shell
$ forge test
```

#### ABI

```shell
$ forge inspect Token abi > abi/Token.json
```

#### Deploy (GameSwift Testnet)

```shell
$ forge script script/DeployToken.s.sol:DeployToken \
    --rpc-url ${GS_TESTNET_RPC_URL} \
    --chain-id ${GS_TESTNET_CHAIN_ID} \
    --broadcast
```

ERC-20: [0x2F8b13C80b771FA1d79266fCe73ef00aDA172DE4](https://testnet.gameswift.io/address/0x2F8b13C80b771FA1d79266fCe73ef00aDA172DE4)

#### Deploy (GameSwift Mainnet)

```shell
$ forge script script/DeployToken.s.sol:DeployToken \
    --rpc-url ${GS_MAINNET_RPC_URL} \
    --chain-id ${GS_MAINNET_CHAIN_ID} \
    --broadcast
```

ERC-20: [0x2F8b13C80b771FA1d79266fCe73ef00aDA172DE4](https://mainnet.gameswift.io/address/0x2F8b13C80b771FA1d79266fCe73ef00aDA172DE4)
