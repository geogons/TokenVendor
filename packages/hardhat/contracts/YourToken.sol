pragma solidity ^0.6.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// learn more: https://docs.openzeppelin.com/contracts/3.x/erc20

contract YourToken is ERC20{
    //ToDo: add constructor and mint tokens for deployer,
    //you can use the above import for ERC20.sol. Read the docs ^^^

    //inherited the ERC20 contract
    constructor (string memory name_, string memory symbol_) public ERC20(name_, symbol_){
        _mint(msg.sender, 1000 * 10 ** uint(decimals()));
    }
}
