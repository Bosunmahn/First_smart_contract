// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;  // solidity versions 
contract SimpleStrorage {
    
    //WhatzYourAge gets initialized to zero if no value is assigned to it.

    uint256 WhatzYourAge;

    //uint256[] List_of_AGES;

    struct person {
        uint256 Person_age;
        string Person_name;
    }
     // dynamic array 
    person[] public listofpeople;

    mapping(string => uint256) public nameToage;

    // person public Francis = person({Person_age: 23, Person_name: "Francis"});
    // person public Toba = person({Person_age: 26, Person_name: "Toba"});
    // person public Ata = person({Person_age: 22, Person_name: "Ata"});

    function store(uint256 _WhatzYourAge) public {
        WhatzYourAge = _WhatzYourAge + 1;
    }
     //view, pure
    function retrieve() public view returns(uint256) {
        return WhatzYourAge;
    }

    function addperson(string memory Person_name, uint256 Person_age) public {
        listofpeople.push(person(Person_age, Person_name));
        nameToage[Person_name] = Person_age;
    }

  
}
