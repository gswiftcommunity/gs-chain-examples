// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Test} from "forge-std/Test.sol";
import {Script, console} from "forge-std/Script.sol";
import {Token} from "../src/Token.sol";

contract TokenTest is Test {
    address public owner;
    Token public token;
    string public tokenName;
    string public tokenSymbol;
    uint256 public tokenSupply;

    function setUp() public {
        owner = makeAddr("owner");

        console.log("Owner: %s", owner);

        tokenName = vm.envString("TOKEN_NAME");
        tokenSymbol = vm.envString("TOKEN_SYMBOL");
        tokenSupply = vm.envUint("TOKEN_INITIAL_SUPPLY");

        token = new Token(tokenName, tokenSymbol, tokenSupply);

        console.log("Token: %s", address(token));
    }

    function testTokenSupply() public view {
        assertEq(token.totalSupply(), tokenSupply);
    }

    function testTokenName() public view {
        assertEq(token.name(), tokenName);
    }

    function testTokenSymbol() public view {
        assertEq(token.symbol(), tokenSymbol);
    }
}
