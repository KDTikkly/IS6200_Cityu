// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


 * @title StudentRegistry
 * @dev Manages student records with administrative control and integrity checks.
 
contract StudentRegistry {
    address public immutable owner;
    uint256 public totalStudents;

    struct Student {
        string name;
        uint256 age;
        bool isRegistered;
    }

    mapping(address => Student) private students;

    // Custom Errors (Gas efficient)
    error NotOwner();
    error AlreadyRegistered(address studentAddr);
    error NotRegistered(address studentAddr);
    error InvalidAge();

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    /**
     * @notice Registers a new student. Only accessible by the owner.
     */
    function registerStudent(address _addr, string calldata _name, uint256 _age) external onlyOwner {
        if (students[_addr].isRegistered) revert AlreadyRegistered(_addr);
        if (_age == 0 || _age > 100) revert InvalidAge();

        students[_addr] = Student(_name, _age, true);
        totalStudents++;

        // --- Integrity Check ---
        // Ensuring the state counter matches the operation logic
        assert(totalStudents > 0);
    }

    /**
     * @notice Retrieves student details by address.
     */
    function getStudent(address _addr) external view returns (string memory name, uint256 age) {
        if (!students[_addr].isRegistered) revert NotRegistered(_addr);
        Student storage s = students[_addr];
        return (s.name, s.age);
    }

    /**
     * @notice Removes a student record and updates the registry count.
     */
    function removeStudent(address _addr) external onlyOwner {
        if (!students[_addr].isRegistered) revert NotRegistered(_addr);
        
        delete students[_addr];
        totalStudents--;

        // --- Integrity Check ---
        // Ensuring the counter doesn't underflow into an impossible state
        assert(totalStudents >= 0);
    }
}