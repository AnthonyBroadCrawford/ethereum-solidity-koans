pragma solidity ^0.4.17;

contract Constructor {

  //publicly accessible variable I can set from within constructor
  uint public caller;

  function Constructor() public {
    caller = 15;
  }

  //
  //uncommenting this should result in a compiler error as Contracts may only have one constructor
  //
  //function Constructor(uint contractCaller) public {
  //  caller = contractCaller;
  //}

  function caller() public view returns (uint){
    return caller;
  }
}
