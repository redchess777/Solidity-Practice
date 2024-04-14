// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Array {
    // 動態常數數組
    uint256[] public arr;
    // 動態常數數組，初始長度有5位
    uint256[] public arr2 = [1, 2, 3];
    // 固定常數為10的數組，默認每個元數皆為0
    uint256[10] public myFixedSizeArr;

    function get(uint256 _i) public view returns (uint256) {
        return arr[_i];
    }

    // 可以返回空的陣列，但要避免返回無限長度的陣列，例如: unit256[]
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    // 加入元素並放到陣列的最後一個
    function push(uint256 _i) public {
        arr.push(_i);
    }

    // 刪除陣列最後一個元素
    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    // 刪除陣列內部元素，且陣列長度不會改變
    function remove(uint256 _index) public {
        delete arr[_index];
    }

    // 在memory建立數組，且只能建立固定大小
    function examples() external pure returns (uint256[] memory) {
        uint256[] memory a = new uint256[](5);

        return a;
    }
}

contract ArrayRemoveByShifting {
    uint256[] public arr;

    function push(uint256 _i) public {
        arr.push(_i);
    }

    function get() public view returns (uint256[] memory) {
        return arr;
    }

    // 刪除機制為: 若預刪除第x個數，則把第x個數後面的數都往前一個數複製，且最後一數字不改變直接刪除
    function remove(uint256 _index) public {
        require(_index < arr.length, "index out of bound");

        for (uint256 i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4, 5];
        remove(2);
        // [1, 2, 4, 5]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);

        arr = [1];
        remove(0);
        // []
        assert(arr.length == 0);
    }
}

// 沒用的刪除陣列
contract ArrayReplaceFromEnd {
    uint256[] public arr;

    function remove(uint256 _index) public {
        arr[_index] = arr[arr.length - 1];
        arr.pop();
    }

    function test() public {
        arr = [1, 2, 3, 4];

        remove(1);
        // [1, 4, 3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        // [1, 4]
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }
}