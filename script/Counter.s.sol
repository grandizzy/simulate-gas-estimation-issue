// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {}

    function run() public {

        uint256 privateKey = uint256(vm.envBytes32("PRIVATE_KEY"));

        address deployer = vm.addr(privateKey);

        vm.startBroadcast(privateKey);
        Counter counter = new Counter();
        vm.signAndAttachDelegation(address(counter), privateKey);
        Counter(payable(deployer)).noop();
        Counter(payable(deployer)).noop();

        vm.stopBroadcast();
    }
}
