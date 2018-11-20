pragma solidity ^0.4.0;

contract GetSetContract{

    string data;
    string im;

    event StateSaveEvent(string data);

    function get() public view returns(string) {
        return data;
    }

    function getIdentityMeta(string identityMeta) returns(string) {
        return identityMeta;    
    }
    
    function setIM(string identityMeta) public {
        im = identityMeta;    
    }
    
    function getIM(string identityMeta) public returns(string) {
        return im;    
    }
    
    
    
    function set(string arg) public {
        data = arg;     // this is a transaction. There is no explicit write
        emit StateSaveEvent(arg);
    }
}