// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount=0;

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    mapping (uint => Task) tasks;

    constructor() public{
        createTask("dasda");
}

    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount]= Task(taskCount, _content, false);
    }
}
