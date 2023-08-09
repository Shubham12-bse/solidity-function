// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorHandling {

    uint minimumBalance = 1000;

    function handler(uint _money, uint _minBalance) public view returns (uint) {
        require(_money > 1000,"Money should be more than 1000.");

        assert(_minBalance == minimumBalance);

        if ((_money - _minBalance) < 0){
            revert("Maintain minimum balance:");
        }

        return _money - _minBalance;
    }
}
