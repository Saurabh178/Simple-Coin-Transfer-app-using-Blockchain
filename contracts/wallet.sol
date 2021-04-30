pragma solidity ^0.4.2;

contract wallet
{
    uint public amt1;
    uint public amt2;
    
    function wallet() public
    {
        amt1=1000;
        amt2=1000;
    }
    
    function send1(uint _val) public
    {
        require(amt1 > _val, "Not Enough Balance!");
        require(_val > 0, "Zero Amount cannot be sent!");
        
        amt1 = amt1 - _val;
        amt2 = amt2 + _val;
    }
    
    function send2(uint _val) public
    {
        require(amt2 > _val, "Not Enough Balance!");
        require(_val > 0, "Zero Amount cannot be sent!");
        
        amt2 = amt2 - _val;
        amt1 = amt1 + _val;
    }
    
    
}