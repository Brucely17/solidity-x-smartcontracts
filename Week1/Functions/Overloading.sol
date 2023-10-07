// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    function double(uint y) external pure returns(uint){
        return y*2;
    }
    function double(uint a,uint b) external pure returns(uint,uint){
        return (a*2,b*2);
    }
}