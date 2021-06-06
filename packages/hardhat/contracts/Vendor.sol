// SPDX-License-Identifier: MIT
pragma solidity ^0.6.7;

//import "@openzeppelin/contracts/access/Ownable.sol";
import "./YourToken.sol";

contract Vendor {

  YourToken yourToken;
  uint256 public constant tokensPerEth = 100;
  event BuyTokens(address buyer, uint256 amountOfETH, uint256 amountOfTokens);


  constructor(address tokenAddress) public {
    yourToken = YourToken(tokenAddress);
  }

  //ToDo: create a payable buyTokens() function:
  function buyTokens(uint256 amountOfTokens) public payable {
    emit BuyTokens(msg.sender, msg.value, amountOfTokens)
  }

  //ToDo: create a sellTokens() function:

  //ToDo: create a withdraw() function that lets the owner, you can 
  //use the Ownable.sol import above:
}
