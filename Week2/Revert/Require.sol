// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    
    address public owner;
    constructor () payable{
        owner=msg.sender;
        // address(this).balance +=1;
        // (bool s,)=address(this).call{value:msg.value}("");
        require(msg.value>=1 ether,"No funds");
    }
   
    function withdraw() public {
require(msg.sender==owner,"No you cant deploy");
        payable(owner).transfer(address(this).balance);

    }

}