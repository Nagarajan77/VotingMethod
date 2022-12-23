// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Election {
    uint public CanditateOneCount;
    uint public CanditateTwoCount;
    string public CanditateOne;
    string public CanditateTwo;

    constructor(string memory _CanditateOne, string memory _CanditateTwo){
        CanditateOne = _CanditateOne;
        CanditateTwo = _CanditateTwo;

    }

    mapping(address => bool) YourVote;
    modifier ChanceOver{
        require(YourVote[msg.sender] == false, "You already voted");
        _;
    }

    function voteCanditateOne() public ChanceOver {
    YourVote[msg.sender] = true;
    CanditateOneCount++;
    }

    function voteCanditateTwo() public ChanceOver {
    YourVote[msg.sender] = true;
    CanditateOneCount++;
    }
}


