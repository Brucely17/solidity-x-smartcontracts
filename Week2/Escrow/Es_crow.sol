// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {
    event Approved(uint);

  
   
    address public arbiter; 
     address public beneficiary;
       address public depositor;

    constructor(address _arbiter,address _beneficiary) payable{
        arbiter=_arbiter;
        beneficiary=_beneficiary;
        depositor=msg.sender;
    }
    function approve() external{
        payable(beneficiary).transfer(address(this).balance);
        require(msg.sender==arbiter);


        emit Approved(beneficiary.balance);
        
    }
    
}