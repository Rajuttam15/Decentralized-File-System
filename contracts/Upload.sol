//SPDX-License-Identifier:GPL-3.0

pragma solidity^0.8.26;


contract Upload {


    struct Access{
        address user;
        bool access;
    }
    mapping(address=>string[]) value;
    mapping(address=>mapping(address=>bool)) ownership;
    mapping(address=>Access[]) AccessList;
    mapping(address=>mapping(address=>bool)) previousData;

    function add(address _user,string memory url) external {
        value[_user].push(url);
    }
    function allow(address user) external {
        ownership[msg.sender][user]=true;
        if(previousData[msg.sender][user]){
            for(uint i=0;i<AccessList[msg.sender].length;i++){
                if(AccessList[msg.sender][i].user==user){
                     AccessList[msg.sender][i].access=true;
                }
            }
            
        }
        else{
            AccessList[msg.sender].push(Access(user,true));
            previousData[msg.sender][user]=true;
        }
    }
        
    function disallow(address user) public{
        ownership[msg.sender][user]=false;
        for(uint i=0;i<AccessList[msg.sender].length;i++){
            if(AccessList[msg.sender][i].user==user){
                AccessList[msg.sender][i].access=false;
            }
        }
    }
    function display(address _user) external view returns(string[] memory){
        require(_user==msg.sender || ownership[_user][msg.sender],"You don't have access");
        return value[_user];
    }

    function shareAccess()public view returns(Access[] memory){
         return AccessList[msg.sender];
    }
}