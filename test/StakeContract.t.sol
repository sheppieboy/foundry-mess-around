// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;
import "forge-std/Test.sol";
import "../src/Stake.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract StakeContractTest is Test {
    StakeContract private stakeContract;

    function setUp() public {
        stakeContract = new StakeContract();
    }

    function testExample() public {}
}

contract mockERC20 is ERC20 {
    constructor() ERC20("MOCK", "MK20") {
        _mint(msg.sender, 1000e18);
    }
}
