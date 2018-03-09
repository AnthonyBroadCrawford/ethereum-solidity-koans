pragma solidity ^ 0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses";
import "../contracts/Events.sol";

contract TestEvents {
  Events = Events(DeployedAddresses.Events());

}
