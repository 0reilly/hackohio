pragma solidity ^0.4.11;


import "./StandardToken.sol";


/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract BuckICoin is StandardToken {

  string public name = "BuckICoin";
  string public symbol = "OSUC";
  uint256 public decimals = 18;
  uint256 public INITIAL_SUPPLY = 100000000 * 1 ether;

  /**
   * @dev Contructor that gives msg.sender all of existing tokens.
   */
   function  BuckICoin() {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }



}
