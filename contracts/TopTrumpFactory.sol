// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21;

//import "./ConvertLib.sol";

// This is a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

contract TopTrumpFactory {

    mapping(uint256 => address) cardToOwner; // maps each card to its current owner

    event Transfer(address indexed _from, address indexed _to, uint256 _cardId);

    constructor() public {
        //balances[msg.sender] = 10000;
        cardToOwner[0] = msg.sender;
    }

    struct TopTrump {
        uint256 cardId;
        string imageCode;
        string name;
        string field1;
        string field2;
        string field3;
        string funFact;
    }

    function sendCard(address _receiver, uint256 _cardId)
        public
        returns (bool sufficient)
    {
        if (cardToOwner[_cardId] != msg.sender) return false;
        emit Transfer(msg.sender, _receiver, _cardId);
        return true;
    }

    function generateImage(string memory _imageCode) private {
        //Generate the combination that forms the image using the code
    }

    //function getField1(){}
    //function setField1(){}
    //function getField2(){}
    //function setField2(){}
    //function getField3(){}
}
