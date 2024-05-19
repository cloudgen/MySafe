// SPDX-License-Identifier: No license
pragma solidity ^0.8.0;

contract MySafe {
    function deposit() public payable returns (uint) {
        return address(this).balance;
    }
    function balance() public view returns (uint) {
        return address(this).balance;
    }
    function withdraw(uint withdrawAmount) public payable returns (uint) {
        // Check enough balance available, otherwise just return balance
        if (withdrawAmount <= address(this).balance) {
            payable(msg.sender).transfer(withdrawAmount);
        }
        return address(this).balance;
    }
}
