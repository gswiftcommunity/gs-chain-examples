// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Token} from "../src/Token.sol";

contract DeployToken is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        Token token = new Token(
            vm.envString("TOKEN_NAME"),
            vm.envString("TOKEN_SYMBOL"),
            vm.envUint("TOKEN_INITIAL_SUPPLY")
        );

        console.log("Token: %s", address(token));

        vm.stopBroadcast();

        console.log("Deployed!");
    }
}
