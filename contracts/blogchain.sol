pragma solidity ^0.4.0;
contract blogChainContract{
    
    mapping (string => address) content_creator_mapping;
    string[] content_ref_arr;
    address creator_address;
    
    function blogChainContract()public  payable{
        
    }
    
    function bind(string content_ref) public{
        content_creator_mapping[content_ref] = msg.sender;
        content_ref_arr.push(content_ref);
    }
    
    function getCreatorAddress(string content_ref) public view returns (address){
        return content_creator_mapping[content_ref];
    }
    
    
    function getArrayLength()public view returns (uint256){
        return content_ref_arr.length;
    }
    
    function getContentRef(uint256 idx) public view returns(string)
    {
        return content_ref_arr[idx];
    }
}