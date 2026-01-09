// SPDX-License-Identifier: MIT    
pragma solidity ^0.8.20;
  
contract DelhiVote {
    struct Proposal {
        string name;
        uint256 voteCount;
    }

    address public owner;
    Proposal[] public proposals;
    mapping(address => bool) public voters;

    event Voted(address indexed voter, uint256 proposalIndex);

    constructor() {
        owner = msg.sender;
        proposals.push(Proposal("Proposal A", 0));
        proposals.push(Proposal("Proposal B", 0));
    }

    function vote(uint256 _proposal) external {
        require(!voters[msg.sender], "Already voted");
        require(_proposal < proposals.length, "Invalid proposal");
        voters[msg.sender] = true;
        proposals[_proposal].voteCount += 1;
        emit Voted(msg.sender, _proposal);
    }

    function getWinningProposal() public view returns (string memory) {
        require(proposals.length > 0, "No proposals exist");
        uint256 winningVoteCount = 0;
        uint256 winningProposalIndex = 0;
        for (uint256 i = 0; i < proposals.length; i++) {
            if (proposals[i].voteCount > winningVoteCount) {
                winningVoteCount = proposals[i].voteCount;
                winningProposalIndex = i;
            }
        }
        return proposals[winningProposalIndex].name;
    }
}
