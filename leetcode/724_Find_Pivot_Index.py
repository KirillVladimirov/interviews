from typing import List


class Solution1:
    @classmethod
    def pivotIndex(self, nums: List[int]) -> int:
        for i in range(len(nums)):
            l = sum(nums[:i-1])
            r = sum(nums[i:])
            if sum(nums[:i]) == sum(nums[i+1:]):
                return i
        return -1


class Solution2:
    @classmethod
    def pivotIndex(self, nums):
        S = sum(nums)
        leftsum = 0
        for i, x in enumerate(nums):
            if leftsum == (S - leftsum - x):
                return i
            leftsum += x
        return -1


class Solution3:
    @classmethod
    def pivotIndex(self, nums: List[int]) -> int:
        left = 0
        right = sum(nums)
        for i in range(0,len(nums)):
            if i > 0:
                left += nums[i-1]
            right -= nums[i]
            if left == right:
                break
        else:
            return -1
        return i


def test1():
    assert Solution1.pivotIndex([1,7,3,6,5,6]) == 3
    assert Solution1.pivotIndex([2,1,-1]) == 0
    assert Solution1.pivotIndex([1,2,3]) == -1


def test2():
    assert Solution2.pivotIndex([1,7,3,6,5,6]) == 3
    assert Solution2.pivotIndex([2,1,-1]) == 0
    assert Solution2.pivotIndex([1,2,3]) == -1


def test3():
    assert Solution3.pivotIndex([1,7,3,6,5,6]) == 3
    assert Solution3.pivotIndex([2,1,-1]) == 0
    assert Solution3.pivotIndex([1,2,3]) == -1