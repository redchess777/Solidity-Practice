// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Mapping {
    // mapping: 語法為mapping(keyType => valueType)
    // keyType: 包含string bytes bool int uint address或已經部屬的合約
    mapping(address => uint256) public myMap;

    function get(address _addr) public view returns (uint256) {
        // return的值為mapping的數值，若沒有設定則return預設值0
        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public {
        // 更新地址匹配的uint
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // 刪除地址匹配的uint，修改為預設值0
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // 將address mapping到另一個mapping上
    mapping(address => mapping(uint256 => bool)) public nested;

    function get(address _addr, uint256 _i) public view returns (bool) {
        // 返回預設bool值false
        return nested[_addr][_i];
    }

    function set(address _addr, uint256 _i, bool _boo) public {
        // 先mapping uint和bool再mapping address和uint
        nested[_addr][_i] = _boo;
    }

    function remove(address _addr, uint256 _i) public {
        delete nested[_addr][_i];
    }
}