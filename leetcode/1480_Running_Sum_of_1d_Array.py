from typing import List
from itertools import accumulate

class Solution1:
    @classmethod
    def runningSum(self, nums: List[int]) -> List[int]:
        result = [nums[0]]
        for i in range(2, len(nums)+1):
            result.append(sum(nums[:i]))
        return result


class Solution2:
    @classmethod
    def runningSum(self, nums: List[int]) -> List[int]:
        return [sum(nums[:i]) for i in range(1, len(nums)+1)]


class Solution3:
    @classmethod
    def runningSum(self, nums: List[int]) -> List[int]:
        return list(accumulate(nums))


def test_Solution1():
    assert Solution1.runningSum([1, 2, 3, 4]) == [1,3,6,10]


def test_Solution2():
    assert Solution2.runningSum([1, 2, 3, 4]) == [1,3,6,10]


def test_Solution3():
    assert Solution3.runningSum([1, 2, 3, 4]) == [1,3,6,10]
