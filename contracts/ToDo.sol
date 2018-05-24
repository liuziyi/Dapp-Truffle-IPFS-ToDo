pragma solidity ^0.4.2;

contract ToDo {
	struct Task {
		uint id;
		string name;
		string category;
	}

	mapping(uint => Task) public tasks;
	uint public tasksCount;

	event addTaskEvent(
		uint indexed _taskId
	);

	function ToDo () public {
		addTask("Task 1", "Work");
		addTask("Task 2", "Personal");
	}

	function addTask(string _name, string _category) public {
		tasksCount++;
		tasks[tasksCount] = Task(tasksCount, _name, _category);

		addTaskEvent(tasksCount);
	}
}