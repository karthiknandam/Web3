// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract SimpleStorage{ 
    uint256 fav;

    // Simple addMe function 

    function store(uint256 _fav) public virtual  { 
        fav = _fav;
    }

    struct Person{ 
        string name;
        uint256 favNum;
    }

    // One way of doing the person creation and another way is simple just use a array of the persons;
    // Person public karthik = Person("Karthik" , 21);

    // View and pure functions -> returns is used to return the data 
    function getVal() public view  returns (uint256){ 
        return fav;
    }

    Person[] public listOfPersons;


    // This is used to store more number of persons in the list of array 

    // """memory""" is used only for the non string cause string is a special datatype ;

    // """"memory , storage , calldata"""" ->

    // calldata is used to set the data only once , can not be modified in the function ;
    // But on the other end memory is used to set data in the function and rename the name to any other;

    // ""Mapping""
    mapping (string => uint256) public listnodes;


    function addPerson (string memory _name , uint256 _favNum) public { 
        // Person memory newPerson = Person(_name , _favNum);
        // listOfPersons.push(newPerson);
        // or ;
        listOfPersons.push(Person(_name , _favNum));
        listnodes[_name] = _favNum;
    }

    function getPerson(uint256 _num) public view returns(string memory , uint256){ 
        Person storage person = listOfPersons[_num];
        return(person.name,person.favNum);
    }
    // view is used only to get access to the valuews with in the state 
    // pure is used to return only the numbers not the variables which are declared 



}