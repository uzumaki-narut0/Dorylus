pragma solidity ^0.4.20;

contract TsukiyomiToken {
    /* This creates an array with all balances */
    mapping (address => uint256) public balanceOf;

    /* Initializes contract with initial supply tokens to the creator of the contract */
    function TsukiyomiToken(
        uint256 initialSupply
        ) public payable{
        balanceOf[msg.sender] = initialSupply;
    }

    /* Send coins */
    function transfer(address _to, uint256 _value) public payable{
        require(balanceOf[msg.sender] >= _value);           // Check if the sender has enough
        balanceOf[msg.sender] -= _value;                    // Subtract from the sender
        balanceOf[_to] += _value;                           // Add the same to the recipient
    }
}

