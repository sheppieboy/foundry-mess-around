// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;
import "forge-std/Test.sol";
import "../src/Stake.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract StakeContractTest is Test {
    StakeContract private stakeContract;
    MockERC20 private mockERC20;

    function setUp() public {
        stakeContract = new StakeContract();
        mockERC20 = new MockERC20();
    }

    function testExample() public {
        uint256 amount = 10e18;
        mockERC20.approve(address(stakeContract), amount);
        bool stakeWorked = stakeContract.stake(amount, address(mockERC20));
        assertTrue(stakeWorked);
    }
}

contract MockERC20 is ERC20 {
    constructor() ERC20("MOCK", "MK20") {
        _mint(msg.sender, 1000e18);
    }
}
