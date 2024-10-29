// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;
import {SimpleStorage} from "contracts/SimpleSol.sol";

contract StorageContact{ 
    SimpleStorage[] public listOfSimpleStorage;
    function createSimpleStoreage() public { 
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfSimpleStorage.push(newSimpleStorage);
    }
    function sfSet(uint256 _number , uint _value) public { 
        SimpleStorage myNumber = listOfSimpleStorage[_number];
        myNumber.store(_value);
    }
    function addPer( uint256 _num , string memory _name , uint256 _favNumber) public { 
        SimpleStorage personAdd = listOfSimpleStorage[_num];
        personAdd.addPerson(_name, _favNumber);
    }
    function sfGet(uint256 _number , uint256 _perIndex) public view returns(string memory , uint256){ 
        SimpleStorage personStorage = listOfSimpleStorage[_number];

        // (string memory name , uint256 favNum) = personStorage.getPerson(_perIndex);
        return personStorage.getPerson(_perIndex);
    }
}