PSA: This is Sam's solution attempt of the christmas challenge (SamSolutionAttempt.m)

```
>> SamSolutionAttempt
Elapsed time is 0.619949 seconds.
Secret message: check in the couch
```

---

Welcome to the Christmas Challange!

Each year, my family codes our gifts, so you have to solve a series of riddles to find out which gift is yours.
The past 3 years, since I got into programming, my brother and I have gotton more into it. I have written puzzles 
for him to solve that need to be done using a computer program. 

This year, here is the challange.

There is a string to decode that will tell him where the next clue is hidden. This string is comprised entirely of characters from a-z (lowercase), and a space.

Instead of giving him a string. I am giving him a series of black and white, 16x16 images, each labeled 'template01.bmp,' 'template02.bmp,' etc. for every character in the string.
I am also giving him a giant 1000x1000 black and white image board, which basically looks like noise. This is called 'test_square.bmp'

Now, here is the key. Each template image matches exactly to a 16x16 square somewhere in the image. Your goal is to find where exactly that match happens

Now, what can we do from that? I have also provided another image, 'randomCharMap.bmp.' This basically hosts values from 0 - 26. These are representative of character values. The mapping is as such:

' ' : 0

'a' : 1

'b' : 2

'c' : 3

and so on...

So, once you find a matching image: 
1) Check the top left row and column that the image matches with in 'coded_image.bmp.'
2) Find the integer value of that row and column in 'randomCharMap.bmp'
3) Use the character mapping to find the character that corresponds to this integer value.

Good luck!