// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract SaveUserBalance {
    //mapping of address to uint256
    mapping(address => uint256) public balances;
    address public owner = msg.sender;

    // function that allows users to send real ETH deposits to the contract
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    // function that searches for the user balance inside the balance mapping and returns the balance of whoever is calling the contract
    function checkBalance() public view returns (uint) {
        return balances[msg.sender];
    }
}
