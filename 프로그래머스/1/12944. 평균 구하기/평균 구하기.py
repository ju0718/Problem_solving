def solution(arr):
    if not arr:
        return 0
    return sum(arr) / len(arr)