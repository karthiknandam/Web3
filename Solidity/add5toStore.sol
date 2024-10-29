// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;
import {SimpleStorage} from "contracts/SimpleSol.sol";
contract AddFive is SimpleStorage{ 
    function store(uint _number) public override { 
        fav = _number+5;
    }
}