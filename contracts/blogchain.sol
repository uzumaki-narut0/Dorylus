pragma solidity ^0.4.0;
contract blogChainContract{
    
    mapping (string => address) content_creator_mapping;
    address creator_address;
    function blogChainContract()public  payable{
        
    }
    function bind(string content_ref) public{
        content_creator_mapping[content_ref] = msg.sender;
    }
    
    function getCreatorAddress(string content_ref) public returns (address){
        return content_creator_mapping[content_ref];
    }
    
    function payCreator(string content_ref)public  payable{
        // bindContentWithCreatorContract obj = new bindContentWithCreatorContract();
        creator_address = getCreatorAddress(content_ref);
        creator_address.transfer(msg.value);
    }
}

