pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Marmellata is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Marmellata(address _owner)  UpgradeableToken(_owner) {
    name = "Marmellata";
    symbol = "mma";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}