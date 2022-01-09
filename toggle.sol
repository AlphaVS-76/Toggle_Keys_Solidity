pragma solidity ^0.5.1;

contract MyContract{
    enum State{ToBeDeployed, Ready, Deployed}
    State state;

    constructor() public{
        state = State.ToBeDeployed;
    }

    function Deploy() public{
        state = State.Deployed;
    }

    function Undeploy() public{
        state = State.ToBeDeployed;
    }

    function Deployable() public view returns(bool){
        return state == State.Deployed;
    }
}
