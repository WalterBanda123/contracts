// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    //Contract values
    uint256 public  favNumber;
    

    struct People {
        uint256 favNumber ;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public mapNameToNumber;

    function store(uint256 _favNumber) public {
        favNumber = _favNumber;
    }

    function retrieve() public view returns(uint256){
        return favNumber;
    }

    function add(string memory _name, uint256 _favNumber) public  {
        People memory newPerson = People({favNumber: _favNumber ,name: _name});
        people.push(newPerson);
        mapNameToNumber[_name] = _favNumber;
    }

    
}


//0xd9145CCE52D386f254917e481eB44e9943F39138 Deploy address