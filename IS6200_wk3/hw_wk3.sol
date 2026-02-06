/**
 * Name: LIN HAOYUAN
 * Student ID: 72645104
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StudentRegistry {

    enum StudentStatus { Enrolled, Graduated, Expelled, Inactive }

    struct Student {
        string name;
        uint8 age;
        address wallet;
        StudentStatus status;
        bool isActive;
    }

    uint256 private _studentIdCounter;
    string public registryName;
    address public immutable admin;

    mapping(uint256 => Student) private students;
    uint256[] private studentIds;

    error NotAnAdmin();
    error StudentNotFound(uint256 id);

    modifier onlyAdmin() {
        if (msg.sender != admin) {
            revert NotAnAdmin();
        }
        _;
    }

    constructor(string memory _name) {
        registryName = _name;
        admin = msg.sender;
    }

    // Function using requested format
    function addStudent(string memory _name, uint8 _age, address _wallet) external returns (uint256) {
        uint256 newId = _studentIdCounter++;
        
        students[newId] = Student({
            name: _name,
            age: _age,
            wallet: _wallet,
            status: StudentStatus.Enrolled,
            isActive: true
        });

        studentIds.push(newId);

        // Integrity check: array length must match counter
        assert(studentIds.length == _studentIdCounter);
        
        return newId;
    }

    function updateStatus(uint256 _id, StudentStatus _status) external onlyAdmin {
        if (students[_id].wallet == address(0)) revert StudentNotFound(_id);
        students[_id].status = _status;
    }

    function deactivateStudent(uint256 _id) external onlyAdmin {
        if (students[_id].wallet == address(0)) revert StudentNotFound(_id);
        students[_id].isActive = false;
        
        // Integrity check: confirm state update
        assert(students[_id].isActive == false);
    }

    function getStudent(uint256 _id) external view returns (Student memory) {
        if (students[_id].wallet == address(0)) revert StudentNotFound(_id);
        return students[_id];
    }

    function getStudentName(uint256 _id) external view returns (string memory) {
        return students[_id].name;
    }

    function getTotalStudents() external view returns (uint256) {
        return studentIds.length;
    }

    function getAllStudentIds() external view returns (uint256[] memory) {
        return studentIds;
    }

    function isStudentActive(uint256 _id) external view returns (bool) {
        return students[_id].isActive;
    }
}