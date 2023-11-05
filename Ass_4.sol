// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    struct Student {
        uint id;
        string name;
        uint age;
    }

    Student[] public students;

    // Add student to the array
    function addStudent(uint _id, string memory _name, uint _age) public {
        Student memory newStudent = Student(_id, _name, _age);
        students.push(newStudent);
    }

    // Get the total number of students
    function getNumberOfStudents() public view returns (uint) {
        return students.length;
    }

    // Fallback function to receive Ether
    receive() external payable {}
}
