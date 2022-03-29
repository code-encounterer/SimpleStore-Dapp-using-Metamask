//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract SimpleStorage {
    string public storedData;

    event myEventTest(string eventOuput);

    function set(string memory myText) public {
        storedData = myText;
        emit myEventTest(myText);
    }

    function get() public view returns (string memory) {
        return storedData;
    }
}
