pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Constructor.sol";

contract TestConstructor {
  Constructor constructor = Constructor(DeployedAddresses.Constructor());

  function testCallerIsSetToMe() public {
    uint expected = 15;
    uint actual = constructor.caller();

    Assert.equal(expected, actual, "Should assign 15 to caller");
  }
}
