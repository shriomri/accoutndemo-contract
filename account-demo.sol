pragma solidity ^0.8.0;
contract AccountDemo {
  address public whoDeposited;
  uint public depositAmt;
  uint public accountBalance;

  function deposit() public payable {
    whoDeposited = msg.sender;
    depositAmt = msg.value;
    accountBalance = address(this).balance;
  }
}