// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21;

import "./ConvertLib.sol";

// This is a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

contract TopTrump {
    mapping (address => uint) balances;
    mapping (uint => address) cardToOwner; // maps each card to its current owner

    event Transfer(address indexed _from, address indexed _to, uint _cardId);

    constructor() public {

        //balances[msg.sender] = 10000;
        cardToOwner[0] = msg.sender;
    }

    // function sendCoin(address receiver, uint amount) public returns(bool sufficient) {
    //     if (balances[msg.sender] < amount) return false;
    //     balances[msg.sender] -= amount;
    //     balances[receiver] += amount;
    //     emit Transfer(msg.sender, receiver, amount);
    //     return true;
    // }

    function sendCard(address receiver, uint cardId) public returns(bool sufficient) {
        if (cardToOwner[cardId] != msg.sender) return false;
        emit Transfer(msg.sender, receiver, cardId);
        return true;
        
    }

    // function getBalanceInEth(address addr) public view returns(uint) {
    //     return ConvertLib.convert(getBalance(addr),2);
    // }

    // function getBalance(address addr) public view returns(uint) {
    //     return balances[addr];
    // }
}