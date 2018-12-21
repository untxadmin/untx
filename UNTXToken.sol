pragma solidity ^0.4.18;

import "./MintableToken.sol";
import "./BurnableToken.sol";

contract UNTXToken is MintableToken, BurnableToken {

    string public constant name = "untx";
    string public constant symbol = "UNTX";
    uint32 public constant decimals = 8;

    function UNTXToken() public {
        totalSupply = 2000000000E8;
        balances[msg.sender] = totalSupply; // Add all tokens to issuer balance (crowdsale in this case)
    }

}
