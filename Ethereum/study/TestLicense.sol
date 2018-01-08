/*
Created a first sample contract to understand the Dev toolchain and deployment process
Tested on http://remix.ethereum.org/ and Ethereum Wallet Dev tools from https://www.ethereum.org/
*/

pragma solidity ^0.4.0;
contract TestLicense {
//product seller    
address producer;
address buyer;
event purchase(address producer, address buyer );
 function TestLicense(address _buyer) public {
        producer = msg.sender;
        buyer = _buyer;
        purchase(producer,buyer);
    }
    
function CheckLicense(address _buyer) public view returns (bool isEnabled) {
        if (buyer == _buyer) 
            return true;
        return false;
    }
function GetmyAddress() public  constant  returns(address sender) {
    sender = msg.sender;
    return sender;
    }
}
